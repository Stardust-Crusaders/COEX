//
// Created by kira on 07.10.2019.
//

#ifndef CATKIN_WS_UDP_TELEMETRY_H
#define CATKIN_WS_UDP_TELEMETRY_H

#include "ros/ros.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <cstdlib>
#include <unistd.h>
#include <iostream>
#include <string>
#include <cassert>
#include "clever/GetTelemetry.h"
#include "telemetry_template.h"


class udp_sender {
public:
    udp_sender(const std::string &host, const unsigned &port);
    ~udp_sender();
    int operator<<(udp_msg &msg) const;
private:
    struct sockaddr_in addr;
    int sock;
    size_t size_;
};


#endif //CATKIN_WS_UDP_TELEMETRY_H
