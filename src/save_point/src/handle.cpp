#include <ros/ros.h>
#include <sstream>
 #include<vector>
 #include <fstream>

#include "Coordinate/save_point.hpp"  
#define PII 3.14159265358979


typedef std::vector<std::vector<double>> Points;                //容器嵌套相当于二维数组
Points points;
huatcar  carmsgs;


void huatcar::Save_Point()
{
           
            ofstream p;                                                               //ofstream是从内存到硬盘                                                
            p.open("/home/yeziheng/PP_car_PI/src/map/1.txt",ios::out);                //ios::out文件以输出方式打开（内存数据输出到文件）                                         
            p << std::setprecision(20);                                 //这个文件的数据保留小数点后20位
            for(int i = 0; i < points.size(); i++)
            {
                  p << " "<< points[i][0]<< " " <<points[i][1]<< " " << '\n';
            }
            p.close();
             cout << "看看会不会完成保存点的操作 "<<endl;
             ROS_INFO("进入到这个函数没有");   

}




//  WGS84  转 东北天 ENU
//  lat, lon在程序中为弧度，并非角度，调用前需要自己转换
// 函数功能：将经纬度高程坐标系转换为东北天直角坐标系
void  huatcar ::GeoDetic_TO_ENU(double lat, double lon, double h, double lat0, double lon0, double h0, double enu_xyz[3])
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

    ROS_INFO("输出转换完成坐标");   
    cout << "current_x = "<<enu_xyz[0] <<"current_y = "<<enu_xyz[1]<<endl;
    points.push_back({enu_xyz[0],enu_xyz[1]});    
}