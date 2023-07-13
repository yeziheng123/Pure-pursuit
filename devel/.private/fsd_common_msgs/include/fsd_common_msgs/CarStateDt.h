// Generated by gencpp from file fsd_common_msgs/CarStateDt.msg
// DO NOT EDIT!


#ifndef FSD_COMMON_MSGS_MESSAGE_CARSTATEDT_H
#define FSD_COMMON_MSGS_MESSAGE_CARSTATEDT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/Pose2D.h>

namespace fsd_common_msgs
{
template <class ContainerAllocator>
struct CarStateDt_
{
  typedef CarStateDt_<ContainerAllocator> Type;

  CarStateDt_()
    : header()
    , car_state_dt()
    , car_state_a()  {
    }
  CarStateDt_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , car_state_dt(_alloc)
    , car_state_a(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _car_state_dt_type;
  _car_state_dt_type car_state_dt;

   typedef  ::geometry_msgs::Pose2D_<ContainerAllocator>  _car_state_a_type;
  _car_state_a_type car_state_a;





  typedef boost::shared_ptr< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> const> ConstPtr;

}; // struct CarStateDt_

typedef ::fsd_common_msgs::CarStateDt_<std::allocator<void> > CarStateDt;

typedef boost::shared_ptr< ::fsd_common_msgs::CarStateDt > CarStateDtPtr;
typedef boost::shared_ptr< ::fsd_common_msgs::CarStateDt const> CarStateDtConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fsd_common_msgs::CarStateDt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fsd_common_msgs::CarStateDt_<ContainerAllocator1> & lhs, const ::fsd_common_msgs::CarStateDt_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.car_state_dt == rhs.car_state_dt &&
    lhs.car_state_a == rhs.car_state_a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fsd_common_msgs::CarStateDt_<ContainerAllocator1> & lhs, const ::fsd_common_msgs::CarStateDt_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fsd_common_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d822c665063f7d56fa464194b634b0e7";
  }

  static const char* value(const ::fsd_common_msgs::CarStateDt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd822c665063f7d56ULL;
  static const uint64_t static_value2 = 0xfa464194b634b0e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fsd_common_msgs/CarStateDt";
  }

  static const char* value(const ::fsd_common_msgs::CarStateDt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"\n"
"geometry_msgs/Pose2D car_state_dt   # Velocity in x, y, theta                      x y方向上的速度  角度\n"
"geometry_msgs/Pose2D car_state_a   # Acceleration in x, y, theta               x y方向上的加速度 角度\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose2D\n"
"# Deprecated\n"
"# Please use the full 3D pose.\n"
"\n"
"# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.\n"
"\n"
"# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.\n"
"\n"
"\n"
"# This expresses a position and orientation on a 2D manifold.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 theta\n"
;
  }

  static const char* value(const ::fsd_common_msgs::CarStateDt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.car_state_dt);
      stream.next(m.car_state_a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarStateDt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fsd_common_msgs::CarStateDt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fsd_common_msgs::CarStateDt_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "car_state_dt: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.car_state_dt);
    s << indent << "car_state_a: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose2D_<ContainerAllocator> >::stream(s, indent + "  ", v.car_state_a);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FSD_COMMON_MSGS_MESSAGE_CARSTATEDT_H
