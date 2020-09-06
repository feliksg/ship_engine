# ShipEngine::CarriersApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_funds_to_carrier**](CarriersApi.md#add_funds_to_carrier) | **PUT** /v1/carriers/{carrier_id}/add_funds | Add Funds To Carrier
[**get_carrier_by_id**](CarriersApi.md#get_carrier_by_id) | **GET** /v1/carriers/{carrier_id} | Get Carrier By ID
[**get_carrier_options**](CarriersApi.md#get_carrier_options) | **GET** /v1/carriers/{carrier_id}/options | Get Carrier Options
[**list_carrier_package_types**](CarriersApi.md#list_carrier_package_types) | **GET** /v1/carriers/{carrier_id}/packages | List Carrier Package Types
[**list_carrier_services**](CarriersApi.md#list_carrier_services) | **GET** /v1/carriers/{carrier_id}/services | List Carrier Services
[**list_carriers**](CarriersApi.md#list_carriers) | **GET** /v1/carriers | List Carriers



## add_funds_to_carrier

> AddFundsToCarrierResponseBody add_funds_to_carrier(carrier_id, add_funds_to_carrier_request_body)

Add Funds To Carrier

Add Funds To A Carrier

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

api_instance = ShipEngine::CarriersApi.new
carrier_id = 'se-28529731' # String | Carrier ID
add_funds_to_carrier_request_body = ShipEngine::AddFundsToCarrierRequestBody.new # AddFundsToCarrierRequestBody | 

begin
  #Add Funds To Carrier
  result = api_instance.add_funds_to_carrier(carrier_id, add_funds_to_carrier_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->add_funds_to_carrier: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**| Carrier ID | 
 **add_funds_to_carrier_request_body** | [**AddFundsToCarrierRequestBody**](AddFundsToCarrierRequestBody.md)|  | 

### Return type

[**AddFundsToCarrierResponseBody**](AddFundsToCarrierResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_carrier_by_id

> GetCarrierByIdResponseBody get_carrier_by_id(carrier_id)

Get Carrier By ID

Retrive carrier info by ID

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

api_instance = ShipEngine::CarriersApi.new
carrier_id = 'se-28529731' # String | Carrier ID

begin
  #Get Carrier By ID
  result = api_instance.get_carrier_by_id(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->get_carrier_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**| Carrier ID | 

### Return type

[**GetCarrierByIdResponseBody**](GetCarrierByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_carrier_options

> GetCarrierOptionsResponseBody get_carrier_options(carrier_id)

Get Carrier Options

Get a list of the options available for the carrier

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

api_instance = ShipEngine::CarriersApi.new
carrier_id = 'se-28529731' # String | Carrier ID

begin
  #Get Carrier Options
  result = api_instance.get_carrier_options(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->get_carrier_options: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**| Carrier ID | 

### Return type

[**GetCarrierOptionsResponseBody**](GetCarrierOptionsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_carrier_package_types

> ListCarrierPackageTypesResponseBody list_carrier_package_types(carrier_id)

List Carrier Package Types

List the package types associated with the carrier

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

api_instance = ShipEngine::CarriersApi.new
carrier_id = 'se-28529731' # String | Carrier ID

begin
  #List Carrier Package Types
  result = api_instance.list_carrier_package_types(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->list_carrier_package_types: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**| Carrier ID | 

### Return type

[**ListCarrierPackageTypesResponseBody**](ListCarrierPackageTypesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_carrier_services

> ListCarrierServicesResponseBody list_carrier_services(carrier_id)

List Carrier Services

List the services associated with the carrier ID

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

api_instance = ShipEngine::CarriersApi.new
carrier_id = 'se-28529731' # String | Carrier ID

begin
  #List Carrier Services
  result = api_instance.list_carrier_services(carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->list_carrier_services: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_id** | **String**| Carrier ID | 

### Return type

[**ListCarrierServicesResponseBody**](ListCarrierServicesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_carriers

> GetCarriersResponseBody list_carriers

List Carriers

List all carriers that have been added to this account

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

api_instance = ShipEngine::CarriersApi.new

begin
  #List Carriers
  result = api_instance.list_carriers
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarriersApi->list_carriers: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCarriersResponseBody**](GetCarriersResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

