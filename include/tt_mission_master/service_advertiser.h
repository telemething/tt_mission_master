#pragma once

#include <thread>
#include <linux/in.h>

class ServiceAdvertiser
{
private:

    std::string _addressPrefix = "192.168";
    int sock;
    struct sockaddr_in _broadcastAddr;
    int _addrLen;
    std::thread _broadcastThread; 
    bool _stopBroadcasting = false;
    int _broadcastSleepSeconds = 1;

    bool Init();
    bool RunBroadcastLoop();
    std::string GetIpAddress(std::string prefix); 

public:

  explicit ServiceAdvertiser();
  ~ServiceAdvertiser();
  bool StartService();

 };