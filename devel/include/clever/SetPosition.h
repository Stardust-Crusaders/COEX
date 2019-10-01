// Generated by gencpp from file clever/SetPosition.msg
// DO NOT EDIT!


#ifndef CLEVER_MESSAGE_SETPOSITION_H
#define CLEVER_MESSAGE_SETPOSITION_H

#include <ros/service_traits.h>


#include <clever/SetPositionRequest.h>
#include <clever/SetPositionResponse.h>


namespace clever
{

struct SetPosition
{

typedef SetPositionRequest Request;
typedef SetPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetPosition
} // namespace clever


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::clever::SetPosition > {
  static const char* value()
  {
    return "69cb8e201b1f4163f507e2b13fa97684";
  }

  static const char* value(const ::clever::SetPosition&) { return value(); }
};

template<>
struct DataType< ::clever::SetPosition > {
  static const char* value()
  {
    return "clever/SetPosition";
  }

  static const char* value(const ::clever::SetPosition&) { return value(); }
};


// service_traits::MD5Sum< ::clever::SetPositionRequest> should match 
// service_traits::MD5Sum< ::clever::SetPosition > 
template<>
struct MD5Sum< ::clever::SetPositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::clever::SetPosition >::value();
  }
  static const char* value(const ::clever::SetPositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::clever::SetPositionRequest> should match 
// service_traits::DataType< ::clever::SetPosition > 
template<>
struct DataType< ::clever::SetPositionRequest>
{
  static const char* value()
  {
    return DataType< ::clever::SetPosition >::value();
  }
  static const char* value(const ::clever::SetPositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::clever::SetPositionResponse> should match 
// service_traits::MD5Sum< ::clever::SetPosition > 
template<>
struct MD5Sum< ::clever::SetPositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::clever::SetPosition >::value();
  }
  static const char* value(const ::clever::SetPositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::clever::SetPositionResponse> should match 
// service_traits::DataType< ::clever::SetPosition > 
template<>
struct DataType< ::clever::SetPositionResponse>
{
  static const char* value()
  {
    return DataType< ::clever::SetPosition >::value();
  }
  static const char* value(const ::clever::SetPositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CLEVER_MESSAGE_SETPOSITION_H
