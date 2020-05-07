#include <arpa/inet.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
//#include <linux/in.h>
#include <sys/socket.h>
#include <sys/select.h>
#include <unistd.h>

#include "fmt/format.h"

       #include <sys/types.h>
       #include <ifaddrs.h>

#include <tt_mission_master/service_advertiser.h>

#define IP_FOUND "IP_FOUND"
#define IP_FOUND_ACK "IP_FOUND_ACK"
#define PORT 45679

//***************************************************************************
//
//***************************************************************************

ServiceAdvertiser::ServiceAdvertiser()
{

}

//***************************************************************************
//
//***************************************************************************

ServiceAdvertiser::~ServiceAdvertiser()
{
}

//***************************************************************************
//
//***************************************************************************

bool ServiceAdvertiser::Init()
{
    int yes = 1;
    int ret;
    fd_set readfd;
    int i;
  
    sock = socket(AF_INET, SOCK_DGRAM, 0);

    if (sock < 0) 
    {
        perror("sock error");
        return false;
    }

    // Set permissions to allow broadcast
    ret = setsockopt(sock, SOL_SOCKET, SO_BROADCAST, (char*)&yes, sizeof(yes));

    if (ret == -1) 
    {
        perror("setsockopt error");
        return false;
    }

    _addrLen = sizeof(struct sockaddr_in);

    memset((void*)&_broadcastAddr, 0, _addrLen);
    _broadcastAddr.sin_family = AF_INET;
    _broadcastAddr.sin_addr.s_addr = htonl(INADDR_BROADCAST);
    _broadcastAddr.sin_port = htons(PORT);
        
    return true;
}
  
//***************************************************************************
//
//***************************************************************************

bool ServiceAdvertiser::RunBroadcastLoop()
{
    int i;
    int ret;
    int count;
    char buffer[1024];
    struct sockaddr_in server_addr;
    socklen_t server_addr_len;
    std::string outBuffer;
    std::string timeString = "5248917694459450004";

    std::string address = GetIpAddress(_addressPrefix);  
    std::string port = "9090";  
   
    outBuffer = "{\"Type\":\"config\",\"From\":\"uav\",\"To\":\"*\",\"Time\":\"" + 
        timeString + 
        "\",\"NetworkServices\":[{\"URL\":\"ws://" + 
        address + ":" + port + 
        "\",\"NetworkType\":\"TCP\",\"ServiceType\":\"RosBridge\",\"ServiceRole\":\"server\"}]}";
   
    while(!_stopBroadcasting) 
    {
        ret = sendto(sock, outBuffer.c_str(), strlen(outBuffer.c_str()), 0, (struct sockaddr*) &_broadcastAddr, _addrLen);

        sleep(_broadcastSleepSeconds);

        /*FD_ZERO(&readfd);
        FD_SET(sock, &readfd);

        ret = select(sock + 1, &readfd, NULL, NULL, NULL);

        if (ret > 0) 
        {
            if (FD_ISSET(sock, &readfd)) 
            {
                count = recvfrom(sock, buffer, 1024, 0, (struct sockaddr*)&server_addr, &server_addr_len);
                printf("\trecvmsg is %s\n", buffer);

                if (strstr(buffer, IP_FOUND_ACK)) 
                {
                    printf("\tfound server IP is %s, Port is %d\n", 
                        inet_ntoa(server_addr.sin_addr),htons(server_addr.sin_port));
                }
            }
        }*/
    }
}

//***************************************************************************
/// If we dont find an address with the requested prefix, the just return 
/// the last one we find.
//***************************************************************************

std::string ServiceAdvertiser::GetIpAddress(std::string prefix) 
{
    struct ifaddrs * ifAddrStruct=NULL;
    struct ifaddrs * ifa=NULL;
    void * tmpAddrPtr=NULL;
    std::string address = "";

    getifaddrs(&ifAddrStruct);

    for (ifa = ifAddrStruct; ifa != NULL; ifa = ifa->ifa_next) 
    {
        if (!ifa->ifa_addr) 
        {
            continue;
        }
        if (ifa->ifa_addr->sa_family == AF_INET) 
        { // check it is IP4
            // is a valid IP4 Address
            tmpAddrPtr=&((struct sockaddr_in *)ifa->ifa_addr)->sin_addr;
            char addressBuffer[INET_ADDRSTRLEN];
            inet_ntop(AF_INET, tmpAddrPtr, addressBuffer, INET_ADDRSTRLEN);
            printf("%s IP Address %s\n", ifa->ifa_name, addressBuffer); 
            address = addressBuffer;

            if( 0 == address.find(prefix) )
                return address;
        } 
        else if (ifa->ifa_addr->sa_family == AF_INET6) 
        { // check it is IP6
            // is a valid IP6 Address
            tmpAddrPtr=&((struct sockaddr_in6 *)ifa->ifa_addr)->sin6_addr;
            char addressBuffer[INET6_ADDRSTRLEN];
            inet_ntop(AF_INET6, tmpAddrPtr, addressBuffer, INET6_ADDRSTRLEN);
            printf("%s IP Address %s\n", ifa->ifa_name, addressBuffer); 
            //address = addressBuffer;
        } 
    }

    if (ifAddrStruct!=NULL) freeifaddrs(ifAddrStruct);
    return address;
}

//***************************************************************************
//
//***************************************************************************

bool ServiceAdvertiser::StartService()
{
    if( !Init() )
        return false;

    _broadcastThread = std::thread(&ServiceAdvertiser::RunBroadcastLoop, this); 

    return true;
}
  
/*
int main() 
{
    int sock;
    int yes = 1;
    struct sockaddr_in broadcast_addr;
    struct sockaddr_in server_addr;
    int addr_len;
    int count;
    int ret;
    fd_set readfd;
    char buffer[1024];
    int i;
  
    sock = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock < 0) {
        perror("sock error");
        return -1;
    }
    ret = setsockopt(sock, SOL_SOCKET, SO_BROADCAST, (char*)&yes, sizeof(yes));
    if (ret == -1) {
        perror("setsockopt error");
        return 0;
    }

    addr_len = sizeof(struct sockaddr_in);

    memset((void*)&broadcast_addr, 0, addr_len);
    broadcast_addr.sin_family = AF_INET;
    broadcast_addr.sin_addr.s_addr = htonl(INADDR_BROADCAST);
    broadcast_addr.sin_port = htons(PORT);

    for (i=0;i<3;i++) {
        ret = sendto(sock, IP_FOUND, strlen(IP_FOUND), 0, (struct sockaddr*) &broadcast_addr, addr_len);

        FD_ZERO(&readfd);
        FD_SET(sock, &readfd);

        ret = select(sock + 1, &readfd, NULL, NULL, NULL);

        if (ret > 0) {
        if (FD_ISSET(sock, &readfd)) {
            count = recvfrom(sock, buffer, 1024, 0, (struct sockaddr*)&server_addr, &addr_len);
            printf("\trecvmsg is %s\n", buffer);
            if (strstr(buffer, IP_FOUND_ACK)) {
            printf("\tfound server IP is %s, Port is %d\n", inet_ntoa(server_addr.sin_addr),htons(server_addr.sin_port));
            }
        }
        }
    }
}
*/