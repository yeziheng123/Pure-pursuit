#include "ros/ros.h"
#include <cmath>
#include <cassert>
#include <algorithm>
#include <string>
#include <iostream>
#include <vector>
#include <fstream>
#include <iterator>
#include <eigen3/Eigen/Dense>
#include <eigen3/Eigen/Core>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2/LinearMath/Quaternion.h>
#include "sensor_msgs/NavSatFix.h"
#include <iomanip>

 #include "fsd_common_msgs/ASENSING.h"   
 #include "fsd_common_msgs/CarState.h"
#include "fsd_common_msgs/ControlCommand.h"

using namespace std;
#define l 1.55
#define pi 3.14159265358979
double  enu_xyz[3];
double first_lat = 0.0;             // 定义全局变量，保存第一个点的经纬高数据
double first_lon = 0.0;
double first_alt = 0.0;
class robot
{
public:
	robot()
	{	

		cal_point("/home/tang/PP_car/src/map/1.txt");
	}
	void pos(const fsd_common_msgs::ASENSING::ConstPtr &control_);
	void vel_cmd(fsd_common_msgs::ControlCommand  &cmd, ros::Publisher &pub, ros::Rate &rate);
	void cal_point(const string s);
	void  GeoDetic_TO_ENU(double lat, double lon, double h, double lat0, double lon0, double h0, double enu_xyz[3]);

public:
	double ex, ey, ez, gheading;
	double gx, gy, gz;
	int num = 1058;                    //手动添加
	int label_for_pp = 0; 
	vector<double> refx;
	vector<double> refy;
	vector<vector<double>> points; 
};
void protect();
vector<double>ghe0;
vector<double>ghe;
vector<vector<double>>points;
vector<vector<double>>points1;
vector<double>idx1;
vector<vector<double>>points2;
void robot::pos(const fsd_common_msgs::ASENSING::ConstPtr &msgs)
{
              ROS_INFO("进入回调函数");
			  double gheading0 = (msgs->azimuth)*pi/180;    // 这里做了转换转为了弧度
			  cout << "gheading0 ="<<gheading0 <<endl;
			  ghe0.push_back(gheading0);
			  gheading = (gheading0 > pi) ? (gheading0 - 2 * pi) : (gheading0 < -pi) ? (gheading0 + 2 * pi) : gheading0;
			  cout << "gheading ="<<gheading<<endl;
			 ghe.push_back(gheading);
              if (first_lat == 0.0 && first_lon == 0.0 && first_alt == 0.0) {                                       // 如果是第一个点，保存经纬高数据
              first_lat = msgs->latitude;
              first_lon = msgs->longitude;
              first_alt = msgs->altitude;
              } else {                                                                                   // 如果不是第一个点，进行坐标转换并发布消息
              ROS_INFO("处理第一个后面的订阅消息");
             GeoDetic_TO_ENU( (msgs->latitude)*pi /180, (msgs->longitude)*pi /180, msgs->altitude, 
														first_lat*pi /180,first_lon*pi /180,first_alt, &enu_xyz[0]);  }
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
	// infile >> num;
	// if (num > 0)
	// {
		double a, b;
		for (int i = 0; i < 1058; i++)
		{
			infile >> a >> b;
			refx.push_back(a);
			refy.push_back(b);
		}
	// }
}
void robot::vel_cmd(fsd_common_msgs::ControlCommand  &cmd, ros::Publisher &pub, ros::Rate &rate)
{
	ROS_INFO("进入vel_cmd");
	int idx = 0;
	int temp_idx = label_for_pp;
	float delta_max = 0.35;
	float ld1 = 3.7;                                              //前瞻距离  2.7
	for (int i = label_for_pp; i < 788; i++)             // 这里1058要变
	{
		float dis = sqrt(pow(gy - refy[i], 2) + pow(gx - refx[i], 2));
		if (dis <= ld1)
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
	cout << "idx= " << idx<< endl;
    cout<<"gx="<<gx<<endl;
	cout<<"gy="<<gy<<endl;
	points1.push_back({gx,gy});
	cout<<"refy(idx)"<<refy[idx]<<endl;
	cout<<"refx(idx)"<<refx[idx]<<endl;
	points2.push_back({refy[idx],refx[idx]});
	idx1.push_back(idx);
	float alpha = atan2(refx[idx] - gx,refy[idx] - gy) - gheading;             //角度转弧度 -atan2
	cout << "alpha = " << alpha<< endl;
	alpha = (alpha > pi) ? (alpha - 2 * pi) : (alpha < -pi) ? (alpha + 2 * pi) : alpha;
	cout << "alpha = " << alpha<< endl;

	if (1)
	{
		float delta_pp = atan2(2 * l * sin(alpha) / ld1, 1.0);
		float delta = delta_pp;
		cout << "转角0" << delta << endl;
		// delta = max(min(delta_max, delta), -delta_max);
		// points.push_back({gx,gy,delta});
		cmd.steering_angle.data= delta; // delta
		cout << "转角: " << cmd.steering_angle.data << endl;
		pub.publish(cmd);
	}
	else
	{
		cmd.steering_angle.data = 0;
		cout << "转角2: " << cmd.steering_angle.data<< endl;
		pub.publish(cmd);
	}
}

int main(int argc, char **argv)
{
	setlocale(LC_ALL,"");
	ROS_INFO("主函数进入");
	ros::init(argc, argv, "Velocity"); 
	ros::NodeHandle n;
	robot bot;
	fsd_common_msgs::ControlCommand cmd;
	ros::Subscriber sub;
	ROS_INFO("回调函数准备进入");
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

	ros::shutdown();
	protect();
	return 0;
}
void protect()
{
	      ofstream p;                                                               //ofstream是从内存到硬盘                                                
            p.open("/home/tang/PP_car/src/map/2.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            p << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < ghe0.size(); i++)
            {
                  p << " "<<ghe0[i]<< '\n';
            }
            p.close();
			ofstream q;                                                               //ofstream是从内存到硬盘                                                
            q.open("/home/tang/PP_car/src/map/4.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            q << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < ghe.size(); i++)
            {
                  q<< " "<<ghe[i]<< " " << '\n';
            }
            q.close();
			ofstream r;                                                               //ofstream是从内存到硬盘                                                
            r.open("/home/tang/PP_car/src/map/5.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            r<< std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < points1.size(); i++)
            {
                  r << " x ="<<points1[i][0]<<"    y= " <<points1[i][1]<< '\n';
            }
			r.close();
			ofstream m;                                                               //ofstream是从内存到硬盘                                                
            m.open("/home/tang/PP_car/src/map/6.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            m << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < points2.size(); i++)
            {
                  m<< " fy=  "<<points2[i][0]<<"    fx= " <<points2[i][1] << '\n';
            }
			m.close();
			ofstream n;                                                               //ofstream是从内存到硬盘                                                
            n.open("/home/tang/PP_car/src/map/7.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            n << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < idx1.size(); i++)
            {
                  n << " "<<idx1[i]<< '\n';
            }
			n.close();
			cout<<"是否执行操作"<<endl;
}