#pragma once

#include <ros/ros.h>

#include <actionlib/client/simple_action_client.h>
#include <flexbe_msgs/BehaviorExecutionAction.h>
#include <flexbe_msgs/BehaviorSynthesisAction.h>
#include <flexbe_msgs/BehaviorInputAction.h>
//#include <tt_mission_master/tt_mission.h>
#include <tt_mission_master/WaypointPush.h>
#include <tt_mission_master/WaypointPushRequest.h>
#include <tt_mission_master/service_advertiser.h>

typedef actionlib::SimpleActionClient<flexbe_msgs::BehaviorExecutionAction> FlexbeBehaviorClientType;

class tt_master
{
private:

  ros::NodeHandle nodeHandle_;
  FlexbeBehaviorClientType* FlexbeBehaviorClient_;
  ros::ServiceServer tt_mission_service_;
  ros::ServiceServer WayointPush_service_;

  ServiceAdvertiser _serviceAdvertiser;

public:

  explicit tt_master(ros::NodeHandle nh);
  ~tt_master();
  void ConnectToFlexbeServer();
  void doStuff(int order);
  void activeCb();
  void feedbackCb(const flexbe_msgs::BehaviorExecutionFeedbackConstPtr& feedback);
  void doneCb(const actionlib::SimpleClientGoalState& state,
              const flexbe_msgs::BehaviorExecutionResultConstPtr& result);

  //bool serviceCallback( tt_mission_master::tt_mission::Request& request, tt_mission_master::tt_mission::Response& response);
  bool WaypointPushServiceCallback( tt_mission_master::WaypointPush::Request& request, tt_mission_master::WaypointPush::Response& response);
};