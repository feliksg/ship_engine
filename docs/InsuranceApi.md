# ShipEngine::InsuranceApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_funds_to_insurance**](InsuranceApi.md#add_funds_to_insurance) | **PATCH** /v1/insurance/shipsurance/add_funds | Add Funds To Insurance
[**connect_insurer**](InsuranceApi.md#connect_insurer) | **POST** /v1/connections/insurance/shipsurance | Connect a Shipsurance Account
[**disconnect_insurer**](InsuranceApi.md#disconnect_insurer) | **DELETE** /v1/connections/insurance/shipsurance | Disconnect a Shipsurance Account
[**get_insurance_balance**](InsuranceApi.md#get_insurance_balance) | **GET** /v1/insurance/shipsurance/balance | Get Insurance Funds Balance



## add_funds_to_insurance

> AddFundsToInsuranceResponseBody add_funds_to_insurance(add_funds_to_insurance_request_body)

Add Funds To Insurance

You may need to auto fund your account from time to time. For example, if you don't normally ship items over $100, and may want to add funds to insurance rather than keeping the account funded. 

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

api_instance = ShipEngine::InsuranceApi.new
add_funds_to_insurance_request_body = ShipEngine::AddFundsToInsuranceRequestBody.new # AddFundsToInsuranceRequestBody | 

begin
  #Add Funds To Insurance
  result = api_instance.add_funds_to_insurance(add_funds_to_insurance_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling InsuranceApi->add_funds_to_insurance: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **add_funds_to_insurance_request_body** | [**AddFundsToInsuranceRequestBody**](AddFundsToInsuranceRequestBody.md)|  | 

### Return type

[**AddFundsToInsuranceResponseBody**](AddFundsToInsuranceResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## connect_insurer

> Object connect_insurer(connect_insurer_request_body)

Connect a Shipsurance Account

Connect a Shipsurance Account

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

api_instance = ShipEngine::InsuranceApi.new
connect_insurer_request_body = ShipEngine::ConnectInsurerRequestBody.new # ConnectInsurerRequestBody | 

begin
  #Connect a Shipsurance Account
  result = api_instance.connect_insurer(connect_insurer_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling InsuranceApi->connect_insurer: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connect_insurer_request_body** | [**ConnectInsurerRequestBody**](ConnectInsurerRequestBody.md)|  | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disconnect_insurer

> Object disconnect_insurer

Disconnect a Shipsurance Account

Disconnect a Shipsurance Account

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

api_instance = ShipEngine::InsuranceApi.new

begin
  #Disconnect a Shipsurance Account
  result = api_instance.disconnect_insurer
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling InsuranceApi->disconnect_insurer: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_insurance_balance

> GetInsuranceBalanceResponseBody get_insurance_balance

Get Insurance Funds Balance

Retrieve the balance of your Shipsurance account.

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

api_instance = ShipEngine::InsuranceApi.new

begin
  #Get Insurance Funds Balance
  result = api_instance.get_insurance_balance
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling InsuranceApi->get_insurance_balance: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetInsuranceBalanceResponseBody**](GetInsuranceBalanceResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

