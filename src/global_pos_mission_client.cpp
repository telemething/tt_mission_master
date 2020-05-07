#include <tt_mission_master/FlexBeClient.h>
#include <mavros_msgs/WaypointPush.h>
#include <mavros_msgs/WaypointClear.h>

  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  tt_master::tt_master(ros::NodeHandle nh)
  {
    nodeHandle_ = nh;
    ROS_INFO("[tt_master] Node started.");

    if(_serviceAdvertiser.StartService())
      ROS_INFO("[tt_master] Advertiser started.");    
    else
      ROS_INFO("[tt_master] Advertiser failed to start.");
  }

  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  tt_master::~tt_master()
  {
  }

  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  void tt_master::ConnectToFlexbeServer()
  {

    //tt_mission_service_ = nodeHandle_.advertiseService("tt_mission_service", &tt_master::serviceCallback, this);
    WayointPush_service_ = nodeHandle_.advertiseService(
      "WaypointPush_service", &tt_master::WaypointPushServiceCallback, this);


    FlexbeBehaviorClient_ = new FlexbeBehaviorClientType(
      "/flexbe/execute_behavior", true);

    ROS_INFO("Waiting for action server to start.");
    FlexbeBehaviorClient_->waitForServer();
    ROS_INFO("Action server started, sending goal.");
  }

  //***************************************************************************
  //
  //
  // http://wiki.ros.org/flexbe/Tutorials/Running%20Behaviors%20Without%20Operator
  // https://github.com/team-vigir/flexbe_behavior_engine/blob/master/flexbe_msgs/action/BehaviorExecution.action
  //
  //***************************************************************************


  void tt_master::doStuff(int order)
  {
      flexbe_msgs::BehaviorExecutionGoal goal;
      goal.behavior_name = "Hello World Demo";
      //goal.arg_keys = NULL;
      //goal.arg_values = NULL;
      //goal.input_keys = NULL;
      //goal.input_values = NULL;

      // Need boost::bind to pass in the 'this' pointer

      FlexbeBehaviorClient_->sendGoal(goal,
                  boost::bind(&tt_master::doneCb, this, _1, _2),
                  boost::bind(&tt_master::activeCb, this),
                  boost::bind(&tt_master::feedbackCb, this, _1));
  }

  //***************************************************************************
  //
  //
  //
  //***************************************************************************
  
  void tt_master::activeCb()
  {
    ROS_INFO("Acive");
  }

  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  void tt_master::feedbackCb(const flexbe_msgs::BehaviorExecutionFeedbackConstPtr& feedback)
  {
    //ROS_INFO("Feedback: %f", feedback->current_state);
    ROS_INFO("Feedback:");
  }

  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  void tt_master::doneCb(const actionlib::SimpleClientGoalState& state,
              const flexbe_msgs::BehaviorExecutionResultConstPtr& result)
  {
    ROS_INFO("Finished in state [%s]", state.toString().c_str());
    //ROS_INFO("Answer: %i", result->outcome);
    ROS_INFO("Answer");
    //ros::shutdown();
  }

  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  /*bool tt_master::serviceCallback( 
    tt_mission_master::tt_mission::Request& request, 
    tt_mission_master::tt_mission::Response& response)
  {
    ROS_INFO("'tt_mission_service' Service Called");

    //request->arg1;

    ROS_INFO("Arg1 [%s]", request.arg1.c_str());

    response.result = "sup";

    return true;
  }*/


  //***************************************************************************
  //
  //
  //
  //***************************************************************************

  mavros_msgs::WaypointPush srv_wp;
  
  bool tt_master::WaypointPushServiceCallback( 
    tt_mission_master::WaypointPush::Request& request, 
    tt_mission_master::WaypointPush::Response& response)
  {
    ROS_INFO("'WaypointPush_service' Service Called");


    srv_wp.request.start_index = request.start_index;
    auto wpIn = request.waypoint;
    
    ROS_INFO("'WaypointPush_service' start_index = %i", srv_wp.request.start_index);

    mavros_msgs::Waypoint wp;
    // fill wp
    wp.frame        = wpIn.frame;
    wp.command      = wpIn.command;
    wp.is_current   = wpIn.is_current;
    wp.autocontinue = wpIn.autocontinue;
    wp.param1       = wpIn.param1;
    wp.param2       = wpIn.param2;
    wp.param3       = wpIn.param3;
    wp.param4       = wpIn.param4;
    wp.z_alt        = wpIn.z_alt;
    wp.x_lat        = wpIn.x_lat;
    wp.y_long       = wpIn.y_long;

    //srv_wp.request.waypoints.push_back(wp);

    response.success = true;
    response.wp_transfered = 4;

    return true;
  }



