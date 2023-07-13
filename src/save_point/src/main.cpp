 //////////////////////////////////////////////////////////////////////////
 //功能：让车自己跑一圈的时候记录轨迹到txt文本 
 //这种情况是 车跑一圈的直接开这个定位的话题，然后
 // 开这个订阅节点 将数据经过处理后给到txt文件
 // 存在的问题   这个转换的数据是不是对的，并且数据格式是必须以这个话题的格式准备，所以到工控机的时候要考虑
 //////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
//车辆的轨迹可以通过惯性导航系统记录下来，然后将其转换为东北天坐标系，
//以便用于控制算法的跟踪。转换的方法通常是通过车辆当前的经纬度和高度信息，
//以及车辆初始位置的经纬度和高度信息，计算出车辆当前位置相对于初始位置的东北天坐标系下的坐标
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////
////////我要获取第一个经纬度数来作为我东北高的第一个坐标///////////////////////////////////
////////在执行的时候先要考虑这个，所以先去msgs包获取第一个经纬度 ///////////////////
////////////map上的文件也需要记得每次清空///////////////////////////////////////////////////////




 
#include <ros/ros.h>                                                                                // 头文件
#include "fsd_common_msgs/ASENSING.h"                              //传感器消息格式
#include "../include/Coordinate/save_point.hpp"                  //定义类

#define PII 3.14159265358979

 huatcar car;                                                                                         
 double  enu_xyz[3]; 

 // 定义全局变量，保存第一个点的经纬高数据
double first_lat = 32.65343529999999816482;
double first_lon = 110.72996019999999361971;
double first_alt = 292.16100000000000136424;                //这里经纬度后续可以通过这个话题读取考虑                                                              
 void doMsg(const fsd_common_msgs::ASENSING::ConstPtr &msgs){
      //  ROS_INFO("进入回调函数进行处理");               //用于测试
      // ROS_INFO_STREAM("latitude = "<<std::fixed << std::setprecision(20)<<(msgs->latitude));
      // ROS_INFO_STREAM("longitude = "<<std::fixed << std::setprecision(20)<<(msgs->longitude));
      // ROS_INFO_STREAM("altitude = "<<std::fixed << std::setprecision(20)<<(msgs->altitude));
      // ros::shutdown();
      // 如果不是第一个点，进行坐标转换并发布消息
      car.GeoDetic_TO_ENU( (msgs->latitude)*PII /180, (msgs->longitude)*PII /180, msgs->altitude, 
														first_lat*PII /180,first_lon*PII /180,first_alt, &enu_xyz[0]);

}
 

 int main(int argc, char **argv) {
        setlocale(LC_ALL,"");
        ros::init(argc, argv, "save_point");
        ros::NodeHandle n;
        ros::Subscriber sub = n.subscribe<fsd_common_msgs::ASENSING>("/INS/ASENSING_INS",1,doMsg);
 
        ros::Rate rate(5);                                              // 控制循环频率从而可以控制发布频率       频率越高 程序执行的速度越快
        ros::Duration(1).sleep();                                //可以更轻松地监视输出。暂停程序1s
        while (ros::ok())
      {  
                  ros::spinOnce();   
                  rate.sleep();                                              //休眠  0.1s
      }
      ROS_INFO("看能不能跳出循环");     //不输出这个语句 但是可以把数据保存进去了
      ros::shutdown(); 
      car.Save_Point();
      cout << "看看会不会完成后面的操作 "<<endl;           // c完之后会处理后面的操作     ROS_INFO在C掉后不显示
      ROS_INFO("看能不能执行到point函数");  
      return 0; 

  }
















