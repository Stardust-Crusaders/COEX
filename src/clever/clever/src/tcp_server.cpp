//
// Created by kira on 05.10.2019.
//
//
// TCP server with unique controls
//

#include "../include/tcp_server.h"


int main(int argc, char **argv) {
    ros::init(argc, argv, "tcp_server");
    ros::NodeHandle n;

    //  service connect
    srv_clever srv;
    srv.navigate  = n.serviceClient<clever::Navigate>("navigate");
    srv.attitude  = n.serviceClient<clever::SetAttitude>("set_attitude");
    srv.position  = n.serviceClient<clever::SetPosition>("set_position");
    srv.rates     = n.serviceClient<clever::SetRates>("set_rates");
    srv.velocity  = n.serviceClient<clever::SetVelocity>("set_velocity");
    srv.telemetry = n.serviceClient<clever::GetTelemetry>("get_telemetry");

    //  tcp connect
    std::string port;
    n.param<std::string>("port", port, "7331");
    tcp_server tcp_cmd(std::atoi(port.c_str()));

    //  service messages
    msg_clever msg;
    msg.navigate.request.auto_arm = true;
    msg.telemetry.request.frame_id="aruco_map";
    int number = 0;
    float tolerance = 0.2;
    //  main loop
    std::string cmd_recv;
    while(ros::ok()) {
        tcp_cmd.accept_wait();
        while (ros::ok()) {
            if ((tcp_cmd >> cmd_recv) <= 0) {
                break;
            }
            msg.navigate.request.frame_id = "body";
            msg.navigate.request.z = 1;
            step(msg, srv);
	    usleep(2000000);
//	    ROS_INFO(cmd_recv.data());
            number = cmd_recv[0];
            for (int i = 0; i < number ; ++i) {
                msg.navigate.request.frame_id = "aruco_map";
                char navx = cmd_recv[i * 3 + 1];
                char navy = cmd_recv[i * 3 + 2];
                char navz = cmd_recv[i * 3 + 3];
//		ROS_INFO(std::to_string(navx).data());
//		ROS_INFO(std::to_string(navy).data());
//		ROS_INFO(std::to_string(navz).data());
                msg.navigate.request.x = navx;
                msg.navigate.request.y = navy;
                msg.navigate.request.z = navz;
                step(msg, srv);
                while(ros::ok()) {
                    srv.telemetry.call(msg.telemetry);
                    auto start = msg.telemetry.response;
		    float bufx = (float)start.x;
		    float bufy = (float)start.y;
		    float bufz = (float)start.z;
		    
                    if ((std::abs(bufx - (float)navx) < tolerance) &&
                        (std::abs(bufy - (float)navy) < tolerance) &&
                        (std::abs(bufz - (float)navz) < tolerance)) {
			//usleep(10000000);
                        break;
                    }
                }
            }
            msg.navigate.request.x = 8;
            msg.navigate.request.y = 8;
            msg.navigate.request.z = 0;
            step(msg, srv);
        }
    }
    return 0;
}


tcp_server::tcp_server(unsigned port)
: addr(), sock(), listener(socket(AF_INET, SOCK_STREAM, 0)), size_(128) {
    assert(listener != -1);
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);
    assert(bind(listener, (struct sockaddr *)&addr, sizeof(addr)) != -1);
    listen(listener, 1);
}

tcp_server::~tcp_server() {
    close(sock);
}

int tcp_server::operator>>(std::string& msg) const {
    char buf[size_];
    int res = recv(sock, buf, size_, 0);
    msg = buf;
    return res;
}

int tcp_server::operator<<(const std::string &msg) const {
    return send(sock, msg.c_str(), msg.size(), 0);
}

int tcp_server::accept_wait() {
    sock = accept(listener, nullptr, nullptr);
    assert(sock != -1);
    ROS_INFO("accepted");
    return sock;
}


void flip (msg_clever &msg,srv_clever &srv) {
    msg.telemetry.request.frame_id = "aruco_map"; // TODO(UsatiyNyan): is it really only map? should check it on hack
    srv.telemetry.call(msg.telemetry);
    auto start = msg.telemetry.response;
    if (msg.telemetry.response.z < 1) {
        msg.navigate.request.z = 0.95 - msg.telemetry.response.z;
        step(msg, srv);
        while (msg.telemetry.response.z < 0.95) {
            usleep(300000);
            srv.telemetry.call(msg.telemetry);
        }
    }

    // bump up
    msg.rates.request.thrust = 3;
    rates(msg, srv);
    usleep(1000000);

    // spin
    msg.rates.request.roll_rate = 7;
    msg.rates.request.thrust = 0.2;
    rates(msg, srv);

    while (true) {
        srv.telemetry.call(msg.telemetry);
        if (std::abs(msg.telemetry.response.roll) > M_PI_2) {
            break;
        }
    }

    //  return to starting position
    msg.position.request.x   = start.x;
    msg.position.request.y   = start.y;
    msg.position.request.z   = start.z;
    msg.position.request.yaw = start.yaw;

    srv.position.call(msg.position);

    msg.position.request.x   = 0;
    msg.position.request.y   = 0;
    msg.position.request.z   = 0;
    msg.position.request.yaw = 0; //  TODO(UsatiyNyan): position related func
}


void step(msg_clever &msg, srv_clever &srv) {
    srv.navigate.call(msg.navigate);
    // clear msg
    msg.navigate.request.x = 0;
    msg.navigate.request.y = 0;
    msg.navigate.request.z = 0;
    msg.navigate.request.speed = 0;
    msg.navigate.request.yaw = 0;
    msg.navigate.request.yaw_rate = 0;
}


void rates(msg_clever &msg, srv_clever &srv) {
    srv.rates.call(msg.rates);
    // clear msg
    msg.rates.request.thrust = 0;
    msg.rates.request.yaw_rate = 0;
    msg.rates.request.pitch_rate = 0;
    msg.rates.request.roll_rate = 0;
}

void velocity(msg_clever &msg, srv_clever &srv) {
    srv.velocity.call(msg.velocity);
    // clear msg
    msg.velocity.request.vx = 0;
    msg.velocity.request.vy = 0;
    msg.velocity.request.vz = 0;
}

