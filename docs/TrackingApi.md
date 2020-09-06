# ShipEngine::TrackingApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_tracking_log**](TrackingApi.md#get_tracking_log) | **GET** /v1/tracking | Get Tracking Information
[**start_tracking**](TrackingApi.md#start_tracking) | **POST** /v1/tracking/start | Start Tracking a Package
[**stop_tracking**](TrackingApi.md#stop_tracking) | **POST** /v1/tracking/stop | Stop Tracking a Package



## get_tracking_log

> GetTrackingLogResponseBody get_tracking_log(opts)

Get Tracking Information

Retrieve package tracking information

### Example

```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-Key'] = 'Bearer'
end

api_instance = ShipEngine::TrackingApi.new
opts = {
  carrier_code: 'stamps_com', # String | Carrier code used to retrieve tracking information
  tracking_number: '9.405511899223197E+21' # String | The tracking number associated with a shipment
}

begin
  #Get Tracking Information
  result = api_instance.get_tracking_log(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TrackingApi->get_tracking_log: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**| Carrier code used to retrieve tracking information | [optional] 
 **tracking_number** | **String**| The tracking number associated with a shipment | [optional] 

### Return type

[**GetTrackingLogResponseBody**](GetTrackingLogResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## start_tracking

> String start_tracking(opts)

Start Tracking a Package

Allows you to subscribe to tracking updates for a package. You specify the carrier_code and tracking_number of the package, and receive notifications via webhooks whenever the shipping status changes. 

### Example

```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-Key'] = 'Bearer'
end

api_instance = ShipEngine::TrackingApi.new
opts = {
  carrier_code: 'stamps_com', # String | Carrier code used to retrieve tracking information
  tracking_number: '9.405511899223197E+21' # String | The tracking number associated with a shipment
}

begin
  #Start Tracking a Package
  result = api_instance.start_tracking(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TrackingApi->start_tracking: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**| Carrier code used to retrieve tracking information | [optional] 
 **tracking_number** | **String**| The tracking number associated with a shipment | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## stop_tracking

> String stop_tracking(opts)

Stop Tracking a Package

Unsubscribe from tracking updates for a package.

### Example

```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-Key'] = 'Bearer'
end

api_instance = ShipEngine::TrackingApi.new
opts = {
  carrier_code: 'stamps_com', # String | Carrier code used to retrieve tracking information
  tracking_number: '9.405511899223197E+21' # String | The tracking number associated with a shipment
}

begin
  #Stop Tracking a Package
  result = api_instance.stop_tracking(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TrackingApi->stop_tracking: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_code** | **String**| Carrier code used to retrieve tracking information | [optional] 
 **tracking_number** | **String**| The tracking number associated with a shipment | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

