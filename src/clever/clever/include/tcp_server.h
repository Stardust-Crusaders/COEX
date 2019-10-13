//
// Created by kira on 05.10.2019.
//

#ifndef CATKIN_WS_TCP_SERVER_H
#define CATKIN_WS_TCP_SERVER_H
#define STEP_VAL 0.3

#include "ros/ros.h"
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <iostream>
#include <string>
#include <cassert>
#include <cmath>
#include "clever/Navigate.h"
#include "clever/SetAttitude.h"
#include "clever/SetPosition.h"
#include "clever/SetRates.h"
#include "clever/SetVelocity.h"
#include "clever/GetTelemetry.h"
#include "commands_template.h"


class tcp_server {
public:
    tcp_server(unsigned port);
    ~tcp_server();
    int accept_wait();
    int operator>>(std::string& msg) const;
    int operator<<(const std::string& msg) const;
private:
    struct sockaddr_in addr;
    int sock;
    int listener;
    size_t size_;
};

typedef struct msg_clever {
    clever::Navigate navigate;
    clever::SetAttitude attitude;
    clever::SetPosition position;
    clever::SetRates rates;
    clever::SetVelocity velocity;
    clever::GetTelemetry telemetry;
} msg_clever;

typedef struct srv_clever {
    ros::ServiceClient navigate;
    ros::ServiceClient attitude;
    ros::ServiceClient position;
    ros::ServiceClient rates;
    ros::ServiceClient velocity;
    ros::ServiceClient telemetry;
} srv_clever;

void flip (msg_clever &msg, srv_clever &srv);
void step (msg_clever &msg, srv_clever &srv);
void rates(msg_clever &msg, srv_clever &srv);
void velocity(msg_clever &msg, srv_clever &srv);

#endif //CATKIN_WS_TCP_SERVER_H

