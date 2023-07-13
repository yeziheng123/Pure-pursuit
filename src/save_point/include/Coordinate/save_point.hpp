#ifndef CONTROL_HPP
#define CONTROL_HPP


#include<iostream> //C++标准输入输出库
// #include "fsd_common_msgs/newRTK.h"  
 #include "fsd_common_msgs/ASENSING.h"

using namespace std;
#include <string.h>



class  huatcar
{
public:
        // huatcar()
        // {
        //     cal_point("/home/yeziheng/car_controller/src/map_txt");
        // }
        void cal_point(const string s);
        void Save_Point();
        void setpointState(const fsd_common_msgs::ASENSING::ConstPtr &msgs);
        void GeoDetic_TO_ENU(double lat, double lon, double h, double lat0, double lon0, double h0, double enu_xyz[3]);
        



        

        
        
};














#endif //CONTROL_HPP