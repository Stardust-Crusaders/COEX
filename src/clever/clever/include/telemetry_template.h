//
// Created by kira on 07.10.2019.
//

#ifndef CATKIN_WS_TELEMETRY_MSG_H
#define CATKIN_WS_TELEMETRY_MSG_H

typedef struct udp_msg {
    float x;
    float y;
    float z;
    float yaw;
    float pitch;
    float roll;
    float battery;
} udp_msg;


#endif //CATKIN_WS_TELEMETRY_MSG_H

