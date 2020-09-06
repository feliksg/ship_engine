# ShipEngine::CarrierAccountsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connect_carrier**](CarrierAccountsApi.md#connect_carrier) | **POST** /v1/connections/carriers/{carrier_name} | Connect a carrier account
[**disconnect_carrier**](CarrierAccountsApi.md#disconnect_carrier) | **DELETE** /v1/connections/carriers/{carrier_name}/{carrier_id} | Disconnect a carrier
[**get_carrier_settings**](CarrierAccountsApi.md#get_carrier_settings) | **GET** /v1/connections/carriers/{carrier_name}/{carrier_id}/settings | Get carrier settings
[**update_carrier_settings**](CarrierAccountsApi.md#update_carrier_settings) | **PUT** /v1/connections/carriers/{carrier_name}/{carrier_id}/settings | Update carrier settings



## connect_carrier

> ConnectCarrierResponseBody connect_carrier(carrier_name, connect_carrier_request_body)

Connect a carrier account

Connect a carrier account

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

api_instance = ShipEngine::CarrierAccountsApi.new
carrier_name = ShipEngine::CarrierName.new # CarrierName | The carrier name, such as `stamps_com`, `ups`, `fedex`, or `dhl_express`.
connect_carrier_request_body = ShipEngine::ConnectCarrierRequestBody.new # ConnectCarrierRequestBody | 

begin
  #Connect a carrier account
  result = api_instance.connect_carrier(carrier_name, connect_carrier_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->connect_carrier: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_name** | [**CarrierName**](.md)| The carrier name, such as &#x60;stamps_com&#x60;, &#x60;ups&#x60;, &#x60;fedex&#x60;, or &#x60;dhl_express&#x60;. | 
 **connect_carrier_request_body** | [**ConnectCarrierRequestBody**](ConnectCarrierRequestBody.md)|  | 

### Return type

[**ConnectCarrierResponseBody**](ConnectCarrierResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disconnect_carrier

> String disconnect_carrier(carrier_name, carrier_id)

Disconnect a carrier

Disconnect a carrier

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

api_instance = ShipEngine::CarrierAccountsApi.new
carrier_name = ShipEngine::CarrierName.new # CarrierName | The carrier name, such as `stamps_com`, `ups`, `fedex`, or `dhl_express`.
carrier_id = 'se-28529731' # String | Carrier ID

begin
  #Disconnect a carrier
  result = api_instance.disconnect_carrier(carrier_name, carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->disconnect_carrier: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_name** | [**CarrierName**](.md)| The carrier name, such as &#x60;stamps_com&#x60;, &#x60;ups&#x60;, &#x60;fedex&#x60;, or &#x60;dhl_express&#x60;. | 
 **carrier_id** | **String**| Carrier ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_carrier_settings

> GetCarrierSettingsResponseBody get_carrier_settings(carrier_name, carrier_id)

Get carrier settings

Get carrier settings

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

api_instance = ShipEngine::CarrierAccountsApi.new
carrier_name = ShipEngine::CarrierNameWithSettings.new # CarrierNameWithSettings | The carrier name, such as `stamps_com`, `ups`, `fedex`, or `dhl_express`.
carrier_id = 'se-28529731' # String | Carrier ID

begin
  #Get carrier settings
  result = api_instance.get_carrier_settings(carrier_name, carrier_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->get_carrier_settings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_name** | [**CarrierNameWithSettings**](.md)| The carrier name, such as &#x60;stamps_com&#x60;, &#x60;ups&#x60;, &#x60;fedex&#x60;, or &#x60;dhl_express&#x60;. | 
 **carrier_id** | **String**| Carrier ID | 

### Return type

[**GetCarrierSettingsResponseBody**](GetCarrierSettingsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_carrier_settings

> String update_carrier_settings(carrier_name, carrier_id, update_carrier_settings_request_body)

Update carrier settings

Update carrier settings

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

api_instance = ShipEngine::CarrierAccountsApi.new
carrier_name = ShipEngine::CarrierNameWithSettings.new # CarrierNameWithSettings | The carrier name, such as `stamps_com`, `ups`, `fedex`, or `dhl_express`.
carrier_id = 'se-28529731' # String | Carrier ID
update_carrier_settings_request_body = ShipEngine::UpdateCarrierSettingsRequestBody.new # UpdateCarrierSettingsRequestBody | 

begin
  #Update carrier settings
  result = api_instance.update_carrier_settings(carrier_name, carrier_id, update_carrier_settings_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling CarrierAccountsApi->update_carrier_settings: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **carrier_name** | [**CarrierNameWithSettings**](.md)| The carrier name, such as &#x60;stamps_com&#x60;, &#x60;ups&#x60;, &#x60;fedex&#x60;, or &#x60;dhl_express&#x60;. | 
 **carrier_id** | **String**| Carrier ID | 
 **update_carrier_settings_request_body** | [**UpdateCarrierSettingsRequestBody**](UpdateCarrierSettingsRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json

