//
// Created by kira on 07.10.2019.
//

#include "../include/udp_telemetry.h"


int main(int argc, char ** argv) {
    ros::init(argc, argv, "udp_telemetry");
    ros::NodeHandle n;

    //  service connect
    ros::ServiceClient telemetry_srv = n.serviceClient<clever::GetTelemetry>("get_telemetry");

    //  udp connect
    std::string host, port;
    n.param<std::string>("host", host, "192.168.0.202"); //  "192.168.0.200"
    n.param<std::string>("port", port, "7332");
    udp_sender udp_tele(host, std::atoi(port.c_str()));
    //  TODO(UsatiyNyan): static ip declared but might be some issues

    //  service messages
    udp_msg udp_tele_msg = {};
    clever::GetTelemetry telemetry_msg;
    telemetry_msg.request.frame_id = "aruco_map";
    // TODO(UsatiyNyan): is it really only map? should check it on hack

    //  main loop
    while (ros::ok()) {
        telemetry_srv.call(telemetry_msg);

        //  retrieve
        udp_tele_msg.x     = (telemetry_msg.response.x    );
        udp_tele_msg.y     = (telemetry_msg.response.y    );
        udp_tele_msg.z     = (telemetry_msg.response.z    );
        udp_tele_msg.yaw   = (telemetry_msg.response.yaw  );
        udp_tele_msg.pitch = (telemetry_msg.response.pitch);
        udp_tele_msg.roll  = (telemetry_msg.response.roll );
	udp_tele_msg.battery = (telemetry_msg.response.voltage);
        ROS_INFO(std::to_string(udp_tele_msg.x     ).c_str());
        ROS_INFO(std::to_string(udp_tele_msg.y     ).c_str());
        ROS_INFO(std::to_string(udp_tele_msg.z     ).c_str());
        ROS_INFO(std::to_string(udp_tele_msg.yaw   ).c_str());
        ROS_INFO(std::to_string(udp_tele_msg.pitch ).c_str());
        ROS_INFO(std::to_string(udp_tele_msg.roll  ).c_str());

        //  send
        udp_tele << udp_tele_msg;
    }

    return 0;
}

udp_sender::udp_sender(const std::string &host, const unsigned &port)
: addr(), sock(socket(AF_INET, SOCK_DGRAM, 0)), size_(sizeof(udp_msg)) {
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = inet_addr(host.c_str());
    assert(sock != -1);
}

udp_sender::~udp_sender() {
    close(sock);
}

int udp_sender::operator<<(udp_msg &msg) const {
    return sendto(sock, (void *)&msg, size_, 0, (struct sockaddr *)&addr, sizeof(addr));
}
