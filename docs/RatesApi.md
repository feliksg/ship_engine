# ShipEngine::RatesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculate_rates**](RatesApi.md#calculate_rates) | **POST** /v1/rates | Get Shipping Rates
[**compare_bulk_rates**](RatesApi.md#compare_bulk_rates) | **POST** /v1/rates/bulk | Get Bulk Rates
[**estimate_rates**](RatesApi.md#estimate_rates) | **POST** /v1/rates/estimate | Estimate Rates
[**get_rate_by_id**](RatesApi.md#get_rate_by_id) | **GET** /v1/rates/{rate_id} | Get Rate By ID



## calculate_rates

> CalculateRatesResponseBody calculate_rates(calculate_rates_request_body)

Get Shipping Rates

It's not uncommon that you want to give your customer the choice between whether they want to ship the fastest, cheapest, or the most trusted route. Most companies don't solely ship things using a single shipping option; so we provide functionality to show you all your options! 

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

api_instance = ShipEngine::RatesApi.new
calculate_rates_request_body = ShipEngine::CalculateRatesRequestBody.new # CalculateRatesRequestBody | 

begin
  #Get Shipping Rates
  result = api_instance.calculate_rates(calculate_rates_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->calculate_rates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculate_rates_request_body** | [**CalculateRatesRequestBody**](CalculateRatesRequestBody.md)|  | 

### Return type

[**CalculateRatesResponseBody**](CalculateRatesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## compare_bulk_rates

> Array&lt;BulkRate&gt; compare_bulk_rates(compare_bulk_rates_request_body)

Get Bulk Rates

Get Bulk Shipment Rates

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

api_instance = ShipEngine::RatesApi.new
compare_bulk_rates_request_body = ShipEngine::CompareBulkRatesRequestBody.new # CompareBulkRatesRequestBody | 

begin
  #Get Bulk Rates
  result = api_instance.compare_bulk_rates(compare_bulk_rates_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->compare_bulk_rates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **compare_bulk_rates_request_body** | [**CompareBulkRatesRequestBody**](CompareBulkRatesRequestBody.md)|  | 

### Return type

[**Array&lt;BulkRate&gt;**](BulkRate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## estimate_rates

> Array&lt;Rate&gt; estimate_rates(estimate_rates_request_body)

Estimate Rates

Get Rate Estimates

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

api_instance = ShipEngine::RatesApi.new
estimate_rates_request_body = ShipEngine::EstimateRatesRequestBody.new # EstimateRatesRequestBody | 

begin
  #Estimate Rates
  result = api_instance.estimate_rates(estimate_rates_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->estimate_rates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimate_rates_request_body** | [**EstimateRatesRequestBody**](EstimateRatesRequestBody.md)|  | 

### Return type

[**Array&lt;Rate&gt;**](Rate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_rate_by_id

> GetRateByIdResponseBody get_rate_by_id(rate_id)

Get Rate By ID

Retrieve a previously queried rate by its ID

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

api_instance = ShipEngine::RatesApi.new
rate_id = 'rate_id_example' # String | Rate ID

begin
  #Get Rate By ID
  result = api_instance.get_rate_by_id(rate_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling RatesApi->get_rate_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**| Rate ID | 

### Return type

[**GetRateByIdResponseBody**](GetRateByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

