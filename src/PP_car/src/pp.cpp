#include "ros/ros.h"
#include <cmath>
#include <cassert>
#include <algorithm>
#include <string>
#include <iostream>
#include <vector>
#include <fstream>
#include <iterator>
#include "fsd_common_msgs/ASENSING.h"   
#include "fsd_common_msgs/CarState.h"
#include "fsd_common_msgs/ControlCommand.h"

using namespace std;
#define l 1.55                                                //车轴距
#define zhongxin 0.8525                                        //前轴到重心距离
#define pi 3.14159265358979
float lookahead = 2.5;                                              //前瞻距离  2.7
int num_steps = 5; // 过去的时间步长数
double dt = 0.01;                                                                 //积分时间步长
double Kpp = 0.8;
double Ki = 0.15;
double Kp = 0.05;                                    //.
double e_prev ;                                            //上一次横向误差
double delta_i;                                           //积分误差
const int window_length = 5; // 设置滤波器窗口大小                     LPF
std::vector<double> error_history(num_steps, 0.0); // 保存过去的误差
std::vector<double> delta_history; // 记录过去的 delta 值

fsd_common_msgs::ASENSING my_ins;
float longError,longCurrent,longLast,currentSpeed;

double  enu_xyz[3];
double first_lat = 32.65343529999999816482;
double first_lon = 110.72996019999999361971;
double first_alt = 292.16100000000000136424;                    //这里经纬度后续可以通过这个话题读取考虑填入需要的数  经度高一点      
class robot
{
public:
	robot()
	{	

		cal_point("/home/yeziheng/PP_car_PI/src/map/1.txt");
	}
	void pos(const fsd_common_msgs::ASENSING::ConstPtr &control_);
	void vel_cmd(fsd_common_msgs::ControlCommand  &cmd, ros::Publisher &pub, ros::Rate &rate);
	void cal_point(const string s);
	void  GeoDetic_TO_ENU(double lat, double lon, double h, double lat0, double lon0, double h0, double enu_xyz[3]);

public:
	double ex, ey, ez, gheading;
	double gx, gy, gz;
	int num = 323;                    //手动添加
	int label_for_pp = 0; 
	vector<double> refx;
	vector<double> refy;
	vector<vector<double>> points; 
};
double filter_delta(double delta);    //LPF
/// 用于测试///////////////
void protect();                    
vector<double>ghe;
vector<vector<double>>points;
vector<vector<double>>points1;
vector<double>idx1;
vector<vector<double>>points2;
vector<double>alpha0;
vector<double>ANGLE;
vector<double>stree;
/// 用于测试///////////////


////PP_PI算法//////////////


void robot::pos(const fsd_common_msgs::ASENSING::ConstPtr &msgs)
{
			  my_ins.east_velocity= msgs->east_velocity;
			  my_ins.north_velocity = msgs->north_velocity;
			  my_ins.ground_velocity = msgs->ground_velocity;


			  double gheading0 = (msgs->azimuth)*pi/180;    // 这里做了转换转为了弧度		
			  gheading = (gheading0 > pi) ? (gheading0 - 2 * pi) : (gheading0 < -pi) ? (gheading0 + 2 * pi) : gheading0;
			  ghe.push_back(msgs->azimuth);
              GeoDetic_TO_ENU( (msgs->latitude)*pi /180, (msgs->longitude)*pi /180, msgs->altitude, 
														first_lat*pi /180,first_lon*pi /180,first_alt, &enu_xyz[0]);  
}

void robot::GeoDetic_TO_ENU(double lat, double lon, double h, double lat0, double lon0, double h0, double enu_xyz[3])
{
    double a, b, f, e_sq;
	 a = 6378137;
	 b = 6356752.3142;
	f = (a - b) / a;e_sq = f * (2 - f);
	// 站点（非原点）
	double lamb, phi, s, N, sin_lambda, cos_lambda, sin_phi, cos_phi, x, y, z;
	lamb = lat;  
	phi = lon;
	s = sin(lamb);
	N = a / sqrt(1 - e_sq * s * s);

	sin_lambda = sin(lamb);
	cos_lambda = cos(lamb);
	sin_phi = sin(phi);
	cos_phi = cos(phi);

	x = (h + N) * cos_lambda * cos_phi;
	y = (h + N) * cos_lambda * sin_phi;
	z = (h + (1 - e_sq) * N) * sin_lambda;
	// 原点坐标转换
	double lamb0, phi0, s0, N0, sin_lambda0, cos_lambda0, sin_phi0, cos_phi0, x0, y0, z0;
	lamb0 = lat0;
	phi0 = lon0;
	s0 = sin(lamb0);
	N0 = a / sqrt(1 - e_sq * s0 * s0);

	sin_lambda0 = sin(lamb0);
	cos_lambda0 = cos(lamb0);
	sin_phi0 = sin(phi0);
	cos_phi0 = cos(phi0);

	x0 = (h0 + N0) * cos_lambda0 * cos_phi0;
	y0 = (h0 + N0) * cos_lambda0 * sin_phi0;
	z0 = (h0 + (1 - e_sq) * N0) * sin_lambda0;
	// ECEF 转 ENU
	double xd, yd, zd, t;
	xd = x - x0;
	yd = y - y0;
	zd = z - z0;
	t = -cos_phi0 * xd - sin_phi0 * yd;

	enu_xyz[0] = -sin_phi0 * xd + cos_phi0 * yd;
	enu_xyz[1] = t * sin_lambda0 + cos_lambda0 * zd;
	enu_xyz[2] = cos_lambda0 * cos_phi0 * xd + cos_lambda0 * sin_phi0 * yd + sin_lambda0 * zd;

	gx = enu_xyz[0];
	gy = enu_xyz[1];
	gz = enu_xyz[2];
}

void robot::cal_point(const string s)
{
	ROS_INFO("构造函数进入");
	ifstream infile;
	infile.open(s);
	if (!infile)
	{
		cout << "Unable to open file";
		exit(1);
	}
		double a, b;
		for (int i = 0; i < 323; i++)
		{
			infile >> a >> b;
			refx.push_back(a);
			refy.push_back(b);
		}
}


void robot::vel_cmd(fsd_common_msgs::ControlCommand  &cmd, ros::Publisher &pub, ros::Rate &rate)
{
	//找到最近点索引  横向误差
	double min_dist = std::numeric_limits<double>::max();
	int nearest_idx = -1;
	for (int i = 0; i <refx.size(); i++) {
    double dist = sqrt(pow(gx - refx[i], 2) + pow(gy - refy[i], 2));
    if (dist < min_dist) {
    min_dist = dist;
    nearest_idx = i;                                       //最近点
   	 }
     }
	cout <<"nearest_idx  = "<<nearest_idx <<endl;
    double x_ref = refx[nearest_idx];
    double y_ref = refy[nearest_idx];
	int NNNN = int(nearest_idx+lookahead);  
	double theta_ref0 = atan2(refy[nearest_idx+1 ] - refy[nearest_idx], refx[nearest_idx+1 ] - refx[nearest_idx]);    //最近距离处航向角 用于计算横向误差
    double theta_ref = atan2(refy[NNNN ] - refy[nearest_idx], refx[NNNN ] - refx[nearest_idx]);    //一定距离处航向角
	 if (theta_ref > M_PI) {
        theta_ref -= 2 * M_PI;
    } else if (theta_ref < -M_PI) {
        theta_ref += 2 * M_PI;
    }
	cout <<"theta_ref   = "<<theta_ref <<endl;
    double e = abs((gx- x_ref) * sin(theta_ref0) - (gy - y_ref) * cos(theta_ref0));   //横向误差 m
	cout <<" e    = "<< e <<endl;
    error_history.push_back(e); // 添加最新的误差
	double heading_error =gheading - theta_ref;                                                                              //航向误差   弧度单位
	cout <<" heading_error  = "<< heading_error <<endl;
	// 对航向误差进行限制
    if (heading_error > M_PI) {
        heading_error -= 2 * M_PI;
    } else if (heading_error < -M_PI) {
        heading_error += 2 * M_PI;
    }
	double ela = e +(zhongxin+lookahead-l)*sin(heading_error);                            //前瞻误差 跟ld1相同    这个里面的前瞻距离都是以前轮的为观测点  所以-车轴距
	double DELTAp= Kp*ela;                                                                                                                     //p控制器最终数值
	cout <<"DELTAp = "<<DELTAp<<endl;

	double DELTAi = 0 ;
	if(error_history.size()>=num_steps)
	{
		error_history.erase(error_history.begin()); // 删除最早的误差
		double delta_i = 0.0; // 初始化积分误差
		for (int i = 0; i < num_steps; i++) {
    	delta_i += error_history[i] * dt;
		}
		double DELTAi = Ki*delta_i ;                                                                                                           //i控制器的最终数值
	}
	cout <<"DELTAi = "<<DELTAi<<endl;

	int idx = 0;
	int temp_idx = label_for_pp;
	float delta_max = 0.4;
	
	for (int i = label_for_pp; i < 323; i++)             // 这里1058要变
	{
		float dis = sqrt(pow(gy - refy[i], 2) + pow(gx - refx[i], 2));
		if (dis <= lookahead)
		{
			temp_idx = i;		
		}
		else
		{
			break;
		}
	}
	label_for_pp = temp_idx;
	idx = temp_idx;

	points1.push_back({gx,gy});
	points2.push_back({refx[idx],refy[idx]});
	idx1.push_back(idx);
 //转角
	float alpha = atan2(refx[idx] - gx,refy[idx] - gy) - gheading;                                // -atan2  
	alpha = (alpha > pi) ? (alpha - 2 * pi) : (alpha < -pi) ? (alpha + 2 * pi) : alpha;
	alpha0.push_back(alpha*180/pi);
	float delta_pp = atan2(2 * l * sin(alpha) / lookahead, 1.0);
	float delta = delta_pp;
	double DELTApp = Kpp*delta;
	cout <<"DELTApp = "<<DELTApp<<endl;
    delta = DELTApp+DELTAp+DELTAi;
	delta = max(min(delta_max, delta), -delta_max);                                                     //综合得出的转角限制
// LPF
	float current_steering_angle = delta ;
	double w_current = 0.5;
	double w_previous = (1.0 - w_current) / (window_length- 1);
	delta_history.push_back(delta);
	double filtered_steering_angle = 0.0;
	if( delta_history.size()  >= window_length)
	{
		delta_history.erase(delta_history.begin());
	    
	    for (size_t i = 0; i < delta_history.size() - 1; ++i) {
            filtered_steering_angle += delta_history[i] * w_previous;
        }
		filtered_steering_angle += current_steering_angle * w_current;
		delta = filtered_steering_angle;       
		delta = max(min(delta_max, delta), -delta_max);                                                     //综合得出的转角限制
	}



	cmd.steering_angle.data= delta;                                         // delta
	cout << "转角1:=" << cmd.steering_angle.data*180/pi << endl;
	stree.push_back(cmd.steering_angle.data*180/pi);

//速度
	currentSpeed = sqrt(pow(my_ins.east_velocity,2)+pow(my_ins.north_velocity,2)+pow(my_ins.ground_velocity,2));
	cout << "currentSpeed:=" << currentSpeed<< endl;
	longError = 3.0 - currentSpeed;                                     //表示期望速度1.0跟当前速度的差值 
    longCurrent = 0.5*longError + longLast;                   //表示下一时刻机器人应该达到的速度
    longLast = longCurrent;                                                  //longlast上一时刻的数度
    ///////////////// 这里到时候会跟着速度改变而改变//////////////////////////////////////////////
    if(currentSpeed >2){
            longCurrent = 10;
        }

    if(longCurrent > 30){
            longCurrent = 30;
        }

    if (currentSpeed <= 0.3){
            longCurrent = 50;
        }
	cmd.throttle.data = int(longCurrent);                       //踏板率
    cout<<"cmd.throttle.data =  "<<cmd.throttle.data<<endl;

	pub.publish(cmd);
	if (idx >= refx.size() - 1) {
            cmd.steering_angle.data = 0;
			cmd.throttle.data = 0;
			cmd.racing_status = 4;
            pub.publish(cmd);
            cout << "已经到达离线轨迹的最后一个点，停止跟踪！" << endl;
            ros::shutdown();
    }	
}



int main(int argc, char **argv)
{
	setlocale(LC_ALL,"");
	ros::init(argc, argv, "Velocity"); 
	ros::NodeHandle n;
	robot bot;
	fsd_common_msgs::ControlCommand cmd;
	ros::Subscriber sub;
	sub = n.subscribe("/INS/ASENSING_INS", 1, &robot::pos, &bot); 
	ros::Publisher pub = n.advertise<fsd_common_msgs::ControlCommand>("/control/pure_pursuit/control_command", 1);
	ros::Rate rate(10);
	ros::Duration(1).sleep();
	while (ros::ok())
	{
		ros::spinOnce();
		bot.vel_cmd(cmd, pub, rate);
		rate.sleep();
	}
	protect();                                                                                                           //调试用的
	return 0;
}






void protect()
{
	      ofstream p;                                                               //ofstream是从内存到硬盘                                                
            p.open("/home/yeziheng/PP_car_PI/src/map/ghe.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            p << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < ghe.size(); i++)
            {
                  p << " "<<ghe[i]<< '\n';
            }
            p.close();
			ofstream r;                                                               //ofstream是从内存到硬盘                                                
            r.open("/home/yeziheng/PP_car_PI/src/map/gx_gy.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            r<< std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < points1.size(); i++)
            {
                  r << " x ="<<points1[i][0]<<"    y= " <<points1[i][1]<< '\n';
            }
			r.close();
			ofstream m;                                                               //ofstream是从内存到硬盘                                                
            m.open("/home/yeziheng/PP_car_PI/src/map/rx_ry",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            m << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < points2.size(); i++)
            {
                  m<< " fx=  "<<points2[i][0]<<"    fy= " <<points2[i][1] << '\n';
            }
			m.close();
			ofstream n;                                                               //ofstream是从内存到硬盘                                                
            n.open("/home/yeziheng/PP_car_PI/src/map/idx.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            n << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < idx1.size(); i++)
            {
                  n << " "<<idx1[i]<< '\n';
            }
			n.close();
			ofstream q;                                                               //ofstream是从内存到硬盘                                                
            q.open("/home/yeziheng/PP_car_PI/src/map/alpha.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            q << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < alpha0.size(); i++)
            {
                  q<< " "<<alpha0[i]<< '\n';
            }
			q.close();
			cout<<"是否执行操作"<<endl;
			ofstream z;                                                               //ofstream是从内存到硬盘                                                
            z.open("/home/yeziheng/PP_car_PI/src/map/angle.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            z << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < ANGLE.size(); i++)
            {
                  z<< " "<<ANGLE[i]<< '\n';
            }
			z.close();
			ofstream zz;                                                               //ofstream是从内存到硬盘                                                
            zz.open("/home/yeziheng/PP_car_PI/src/map/stree.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            zz << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < stree.size(); i++)
            {
                  zz<< " "<<stree[i]<< '\n';
            }
			zz.close();
			// cout<<"是否执行操作"<<endl;
}


