//
// Created by kira on 05.10.2019.
//
//
// server.cpp
// ~~~~~~~~~~

//#include "tcp_server.h"
#include "ros/ros.h"
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <iostream>
#include <string>
#include <cassert>
#include <std_msgs/String.h>

class tcp_server {
public:
    explicit tcp_server(unsigned port);
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

int main(int argc, char **argv) { //TODO(UsatiyNyan): launch port
    ros::init(argc, argv, "tcp_server");
    ros::NodeHandle n;
    ros::Publisher cmd_pub = n.advertise<std_msgs::String>("cmd", 1000);
//    ros::Rate loop_rate(10);
    unsigned port;
    std::cout << "Usage [port]" << std::endl;
    std::cin >> port;
    tcp_server tcp_cmd(port);
    std::string cmd;
    std_msgs::String msg;
    while(ros::ok()) {
        tcp_cmd.accept_wait();
        int bytes_read;
        while (ros::ok()) {
            bytes_read = tcp_cmd >> cmd;
            if (bytes_read <= 0) {
                break;
            }
//            std::cout << cmd << std::endl;
            msg.data = cmd;
            cmd_pub.publish(msg);
            ros::spinOnce();
//            loop_rate.sleep();
            if (cmd == "stop") {
                break;
            }
        }

        if (cmd == "stop") {
            break;
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
    std::cout << "accepted" << std::endl;
    return sock;
}
