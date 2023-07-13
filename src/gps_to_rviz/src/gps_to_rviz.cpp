//////////////////////////////////////////////////////////////////////////////
//将GPS轨迹，从经纬度WGS-84坐标转换到真实世界xyz坐标系（东北天ENU）下（思路：
//计算出每个gps坐标相对与第一个坐标的距离（m为单位），比较相邻两点的经纬度变化，
//赋予位移的方向，然后累加得到轨迹）
/////////////////////////////////////////////////////////////////////////////

#include <ros/ros.h>
#include "fsd_common_msgs/ASENSING.h"                    //惯导消息格式
#include "turtlesim/Pose.h"
#include <sensor_msgs/NavSatFix.h>
#include <geometry_msgs/PoseStamped.h>
#include <nav_msgs/Path.h>
#include <math.h>

struct my_pose
{
    double latitude;
    double longitude;
    double altitude;
};
// WGS-84坐标转东北天坐标，公式里使用的是弧度制
//角度制转弧度制
double rad(double d) 
{
	return d * 3.1415926 / 180.0;
}
//全局变量
static double EARTH_RADIUS = 6378.137;//地球半径
ros::Publisher state_pub_;
nav_msgs::Path ros_path_;
bool init;
my_pose init_pose;


void gpsCallback(const fsd_common_msgs::ASENSING::ConstPtr &gps_msg_ptr)
{
    //初始化   这里获取的是第一个位置
    if(!init)
    {
        init_pose.latitude = gps_msg_ptr->latitude;
        init_pose.longitude = gps_msg_ptr->longitude;
        init_pose.altitude = gps_msg_ptr->altitude;
        init = true;
    }
    else
    {
    //计算相对位置
        double radLat1 ,radLat2, radLong1,radLong2,delta_lat,delta_long,x,y;
		radLat1 = rad(init_pose.latitude);
        radLong1 = rad(init_pose.longitude);
		radLat2 = rad(gps_msg_ptr->latitude);
		radLong2 = rad(gps_msg_ptr->longitude);
    
        //计算x
        delta_long = 0;
	    delta_lat = radLat2 - radLat1;  //(radLat1,radLong1)-(radLat2,radLong1)
	    if(delta_lat>0)
        {
                x = 2*asin( sqrt( pow( sin( delta_lat/2 ),2) + cos( radLat1 )*cos( radLat2)*pow( sin( delta_long/2 ),2 ) ));
        }
        else
        {
                x=-2*asin( sqrt( pow( sin( delta_lat/2 ),2) + cos( radLat1 )*cos( radLat2)*pow( sin( delta_long/2 ),2 ) ));
        }
	    x = x*EARTH_RADIUS*1000;

        //计算y
	    delta_lat = 0;
        delta_long = radLong2  - radLong1;   //(radLat1,radLong1)-(radLat1,radLong2)
	    if(delta_long>0)
        {
                y = 2*asin( sqrt( pow( sin( delta_lat/2 ),2) + cos( radLat2 )*cos( radLat2)*pow( sin( delta_long/2 ),2 ) ) );
        }
        else
        {
                y=-2*asin( sqrt( pow( sin( delta_lat/2 ),2) + cos( radLat2 )*cos( radLat2)*pow( sin( delta_long/2 ),2 ) ) );
        }
        //double y = 2*asin( sin( delta_lat/2 ) + cos( radLat2 )*cos( radLat2)* sin( delta_long/2 )   );
        y = y*EARTH_RADIUS*1000;

        //计算z
        double z = gps_msg_ptr->altitude - init_pose.altitude;

        //发布轨迹
        ros_path_.header.frame_id = "map";
        ros_path_.header.stamp = ros::Time::now();  

        geometry_msgs::PoseStamped pose;
        pose.header = ros_path_.header;

        pose.pose.position.x = x;
        pose.pose.position.y = y;
        pose.pose.position.z = z;

        ros_path_.poses.push_back(pose);

        // ROS_INFO("( x:%0.6f ,y:%0.6f ,z:%0.6f)",x ,y ,z );

        state_pub_.publish(ros_path_);
    }
}


int main(int argc,char **argv)
{
    init = false;
    ros::init(argc,argv,"gps_to_rviz");
    ros::NodeHandle n;
    ros::Subscriber pose_sub=n.subscribe("/INS/ASENSING_INS",10,gpsCallback);   
     
    state_pub_ = n.advertise<nav_msgs::Path>("gps_path", 10);
    ros::spin();
    return 0;
}
