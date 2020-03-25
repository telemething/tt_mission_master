#include <tt_mission_master/FlexBeClient.h>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "tt_mission_master");
  ros::NodeHandle nodeHandle("~");
  tt_master tt_master_(nodeHandle);
  tt_master_.ConnectToFlexbeServer();
  tt_master_.doStuff(10);
  ros::spin();
  return 0;
}