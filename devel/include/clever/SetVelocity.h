// Generated by gencpp from file clever/SetVelocity.msg
// DO NOT EDIT!


#ifndef CLEVER_MESSAGE_SETVELOCITY_H
#define CLEVER_MESSAGE_SETVELOCITY_H

#include <ros/service_traits.h>


#include <clever/SetVelocityRequest.h>
#include <clever/SetVelocityResponse.h>


namespace clever
{

struct SetVelocity
{

typedef SetVelocityRequest Request;
typedef SetVelocityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetVelocity
} // namespace clever


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::clever::SetVelocity > {
  static const char* value()
  {
    return "0c536fc3fdea57936646d4924e14c3d1";
  }

  static const char* value(const ::clever::SetVelocity&) { return value(); }
};

template<>
struct DataType< ::clever::SetVelocity > {
  static const char* value()
  {
    return "clever/SetVelocity";
  }

  static const char* value(const ::clever::SetVelocity&) { return value(); }
};


// service_traits::MD5Sum< ::clever::SetVelocityRequest> should match 
// service_traits::MD5Sum< ::clever::SetVelocity > 
template<>
struct MD5Sum< ::clever::SetVelocityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::clever::SetVelocity >::value();
  }
  static const char* value(const ::clever::SetVelocityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::clever::SetVelocityRequest> should match 
// service_traits::DataType< ::clever::SetVelocity > 
template<>
struct DataType< ::clever::SetVelocityRequest>
{
  static const char* value()
  {
    return DataType< ::clever::SetVelocity >::value();
  }
  static const char* value(const ::clever::SetVelocityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::clever::SetVelocityResponse> should match 
// service_traits::MD5Sum< ::clever::SetVelocity > 
template<>
struct MD5Sum< ::clever::SetVelocityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::clever::SetVelocity >::value();
  }
  static const char* value(const ::clever::SetVelocityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::clever::SetVelocityResponse> should match 
// service_traits::DataType< ::clever::SetVelocity > 
template<>
struct DataType< ::clever::SetVelocityResponse>
{
  static const char* value()
  {
    return DataType< ::clever::SetVelocity >::value();
  }
  static const char* value(const ::clever::SetVelocityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CLEVER_MESSAGE_SETVELOCITY_H
