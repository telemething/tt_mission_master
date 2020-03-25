// Generated by gencpp from file tt_mission_master/StartMissionRequest.msg
// DO NOT EDIT!


#ifndef TT_MISSION_MASTER_MESSAGE_STARTMISSIONREQUEST_H
#define TT_MISSION_MASTER_MESSAGE_STARTMISSIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tt_mission_master
{
template <class ContainerAllocator>
struct StartMissionRequest_
{
  typedef StartMissionRequest_<ContainerAllocator> Type;

  StartMissionRequest_()
    : arg1()  {
    }
  StartMissionRequest_(const ContainerAllocator& _alloc)
    : arg1(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _arg1_type;
  _arg1_type arg1;





  typedef boost::shared_ptr< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct StartMissionRequest_

typedef ::tt_mission_master::StartMissionRequest_<std::allocator<void> > StartMissionRequest;

typedef boost::shared_ptr< ::tt_mission_master::StartMissionRequest > StartMissionRequestPtr;
typedef boost::shared_ptr< ::tt_mission_master::StartMissionRequest const> StartMissionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tt_mission_master::StartMissionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tt_mission_master

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'tt_mission_master': ['/Data/catkin-ws/src/tt_mission_master/msg'], 'std_msgs': ['/home/mark/ros_catkin_ws/install_isolated/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1c1538d1048b4f0bff35660720b551c";
  }

  static const char* value(const ::tt_mission_master::StartMissionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1c1538d1048b4f0ULL;
  static const uint64_t static_value2 = 0xbff35660720b551cULL;
};

template<class ContainerAllocator>
struct DataType< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tt_mission_master/StartMissionRequest";
  }

  static const char* value(const ::tt_mission_master::StartMissionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string arg1\n"
;
  }

  static const char* value(const ::tt_mission_master::StartMissionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arg1);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StartMissionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tt_mission_master::StartMissionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tt_mission_master::StartMissionRequest_<ContainerAllocator>& v)
  {
    s << indent << "arg1: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.arg1);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TT_MISSION_MASTER_MESSAGE_STARTMISSIONREQUEST_H
