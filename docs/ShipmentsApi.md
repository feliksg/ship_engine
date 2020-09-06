# ShipEngine::ShipmentsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_shipments**](ShipmentsApi.md#cancel_shipments) | **PUT** /v1/shipments/{shipment_id}/cancel | Cancel a Shipment
[**create_shipments**](ShipmentsApi.md#create_shipments) | **POST** /v1/shipments | Create Shipments
[**get_shipment_by_external_id**](ShipmentsApi.md#get_shipment_by_external_id) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | Get Shipment By External ID
[**get_shipment_by_id**](ShipmentsApi.md#get_shipment_by_id) | **GET** /v1/shipments/{shipment_id} | Get Shipment By ID
[**list_shipment_errors**](ShipmentsApi.md#list_shipment_errors) | **GET** /v1/shipments/{shipment_id}/errors | Get Shipment Errors
[**list_shipment_rates**](ShipmentsApi.md#list_shipment_rates) | **GET** /v1/shipments/{shipment_id}/rates | Get Shipment Rates
[**list_shipments**](ShipmentsApi.md#list_shipments) | **GET** /v1/shipments | List Shipments
[**parse_shipment**](ShipmentsApi.md#parse_shipment) | **PUT** /v1/shipments/recognize | Parse shipping info
[**tag_shipment**](ShipmentsApi.md#tag_shipment) | **POST** /v1/shipments/{shipment_id}/tags/{tag_name} | Add Tag to Shipment
[**untag_shipment**](ShipmentsApi.md#untag_shipment) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag_name} | Remove Tag from Shipment
[**update_shipment**](ShipmentsApi.md#update_shipment) | **PUT** /v1/shipments/{shipment_id} | Update Shipment By ID



## cancel_shipments

> String cancel_shipments(shipment_id)

Cancel a Shipment

Mark a shipment cancelled, if it is no longer needed or being used by your organized. Any label associated with the shipment needs to be voided first An example use case would be if a batch label creation job is going to run at a set time and only queries `pending` shipments. Marking a shipment as cancelled would remove it from this process 

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID

begin
  #Cancel a Shipment
  result = api_instance.cancel_shipments(shipment_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->cancel_shipments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## create_shipments

> CreateShipmentsResponseBody create_shipments(create_shipments_request_body)

Create Shipments

Create one or multiple shipments.

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

api_instance = ShipEngine::ShipmentsApi.new
create_shipments_request_body = ShipEngine::CreateShipmentsRequestBody.new # CreateShipmentsRequestBody | 

begin
  #Create Shipments
  result = api_instance.create_shipments(create_shipments_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->create_shipments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_shipments_request_body** | [**CreateShipmentsRequestBody**](CreateShipmentsRequestBody.md)|  | 

### Return type

[**CreateShipmentsResponseBody**](CreateShipmentsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_shipment_by_external_id

> GetShipmentByExternalIdResponseBody get_shipment_by_external_id(external_shipment_id)

Get Shipment By External ID

Query Shipments created using your own custom ID convention using this endpint

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

api_instance = ShipEngine::ShipmentsApi.new
external_shipment_id = '0bcb569d-1727-4ff9-ab49-b2fec0cee5ae' # String | 

begin
  #Get Shipment By External ID
  result = api_instance.get_shipment_by_external_id(external_shipment_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->get_shipment_by_external_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_shipment_id** | **String**|  | 

### Return type

[**GetShipmentByExternalIdResponseBody**](GetShipmentByExternalIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_shipment_by_id

> GetShipmentByIdResponseBody get_shipment_by_id(shipment_id)

Get Shipment By ID

Get an individual shipment based on its ID

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID

begin
  #Get Shipment By ID
  result = api_instance.get_shipment_by_id(shipment_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->get_shipment_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 

### Return type

[**GetShipmentByIdResponseBody**](GetShipmentByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_shipment_errors

> ListShipmentErrorsResponseBody list_shipment_errors(shipment_id, opts)

Get Shipment Errors

If there are no errors associated with this shipment then the API will return a 404 Not Found response to indicate that no errors are associated with the request 

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID
opts = {
  page: 1, # Integer | Return a specific page of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page is returned. 
  pagesize: 56 # Integer | 
}

begin
  #Get Shipment Errors
  result = api_instance.list_shipment_errors(shipment_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->list_shipment_errors: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 
 **page** | **Integer**| Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  | [optional] [default to 1]
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**ListShipmentErrorsResponseBody**](ListShipmentErrorsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_shipment_rates

> ListShipmentRatesResponseBody list_shipment_rates(shipment_id, opts)

Get Shipment Rates

Get Rates for the shipment information associated with the shipment ID

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID
opts = {
  created_at_start: DateTime.parse('2019-03-12T19:24:13.657Z') # DateTime | Used to create a filter for when a resource was created (ex. A shipment that was created after a certain time)
}

begin
  #Get Shipment Rates
  result = api_instance.list_shipment_rates(shipment_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->list_shipment_rates: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 
 **created_at_start** | **DateTime**| Used to create a filter for when a resource was created (ex. A shipment that was created after a certain time) | [optional] 

### Return type

[**ListShipmentRatesResponseBody**](ListShipmentRatesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_shipments

> ListShipmentsResponseBody list_shipments(opts)

List Shipments

Get list of Shipments

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

api_instance = ShipEngine::ShipmentsApi.new
opts = {
  shipment_status: ShipEngine::ShipmentStatus.new, # ShipmentStatus | 
  batch_id: 'batch_id_example', # String | Batch ID
  tag: 'Letters_to_santa', # String | Search for shipments based on the custom tag added to the shipment object
  created_at_start: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Used to create a filter for when a resource was created (ex. A shipment that was created after a certain time)
  created_at_end: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Used to create a filter for when a resource was created, (ex. A shipment that was created before a certain time)
  modified_at_start: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Used to create a filter for when a resource was modified (ex. A shipment that was modified after a certain time)
  modified_at_end: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Used to create a filter for when a resource was modified (ex. A shipment that was modified before a certain time)
  page: 1, # Integer | Return a specific page of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page is returned. 
  page_size: 25, # Integer | The number of results to return per response.
  sales_order_id: 'sales_order_id_example', # String | Sales Order ID
  sort_dir: ShipEngine::SortDir.new, # SortDir | Controls the sort order of the query.
  sort_by: ShipEngine::ShipmentsSortBy.new # ShipmentsSortBy | 
}

begin
  #List Shipments
  result = api_instance.list_shipments(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->list_shipments: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_status** | [**ShipmentStatus**](.md)|  | [optional] 
 **batch_id** | **String**| Batch ID | [optional] 
 **tag** | **String**| Search for shipments based on the custom tag added to the shipment object | [optional] 
 **created_at_start** | **DateTime**| Used to create a filter for when a resource was created (ex. A shipment that was created after a certain time) | [optional] 
 **created_at_end** | **DateTime**| Used to create a filter for when a resource was created, (ex. A shipment that was created before a certain time) | [optional] 
 **modified_at_start** | **DateTime**| Used to create a filter for when a resource was modified (ex. A shipment that was modified after a certain time) | [optional] 
 **modified_at_end** | **DateTime**| Used to create a filter for when a resource was modified (ex. A shipment that was modified before a certain time) | [optional] 
 **page** | **Integer**| Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return per response. | [optional] [default to 25]
 **sales_order_id** | **String**| Sales Order ID | [optional] 
 **sort_dir** | [**SortDir**](.md)| Controls the sort order of the query. | [optional] 
 **sort_by** | [**ShipmentsSortBy**](.md)|  | [optional] 

### Return type

[**ListShipmentsResponseBody**](ListShipmentsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## parse_shipment

> ParseShipmentResponseBody parse_shipment(parse_shipment_request_body)

Parse shipping info

The shipment-recognition API makes it easy for you to extract shipping data from unstructured text, including people's names, addresses, package weights and dimensions, insurance and delivery requirements, and more.  Data often enters your system as unstructured text (for example: emails, SMS messages, support tickets, or other documents). ShipEngine's shipment-recognition API helps you extract meaningful, structured data from this unstructured text. The parsed shipment data is returned in the same structure that's used for other ShipEngine APIs, so you can easily use the parsed data to create a shipping label.  > **Note:** Shipment recognition is currently supported for the United States, Canada, Australia, New Zealand, the United Kingdom, and Ireland. 

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

api_instance = ShipEngine::ShipmentsApi.new
parse_shipment_request_body = {"text":"I have a 4oz package that's 5x10x14in, and I need to ship it to Margie McMiller at 3800 North Lamar suite 200 in austin, tx 78652. Please send it via USPS first class and require an adult signature. It also needs to be insured for $400.\n"} # ParseShipmentRequestBody | The only required field is `text`, which is the text to be parsed. You can optionally also provide a `shipment` containing any already-known values. For example, you probably already know the `ship_from` address, and you may also already know what carrier and service you want to use. 

begin
  #Parse shipping info
  result = api_instance.parse_shipment(parse_shipment_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->parse_shipment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parse_shipment_request_body** | [**ParseShipmentRequestBody**](ParseShipmentRequestBody.md)| The only required field is &#x60;text&#x60;, which is the text to be parsed. You can optionally also provide a &#x60;shipment&#x60; containing any already-known values. For example, you probably already know the &#x60;ship_from&#x60; address, and you may also already know what carrier and service you want to use.  | 

### Return type

[**ParseShipmentResponseBody**](ParseShipmentResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## tag_shipment

> TagShipmentResponseBody tag_shipment(shipment_id, tag_name)

Add Tag to Shipment

Add a tag to the shipment object

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID
tag_name = 'tag_name_example' # String | 

begin
  #Add Tag to Shipment
  result = api_instance.tag_shipment(shipment_id, tag_name)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->tag_shipment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 
 **tag_name** | **String**|  | 

### Return type

[**TagShipmentResponseBody**](TagShipmentResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## untag_shipment

> String untag_shipment(shipment_id, tag_name)

Remove Tag from Shipment

Remove an existing tag from the Shipment object

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID
tag_name = 'tag_name_example' # String | 

begin
  #Remove Tag from Shipment
  result = api_instance.untag_shipment(shipment_id, tag_name)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->untag_shipment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 
 **tag_name** | **String**|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## update_shipment

> UpdateShipmentResponseBody update_shipment(shipment_id, update_shipment_request_body)

Update Shipment By ID

Update a shipment object based on its ID

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

api_instance = ShipEngine::ShipmentsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID
update_shipment_request_body = ShipEngine::UpdateShipmentRequestBody.new # UpdateShipmentRequestBody | 

begin
  #Update Shipment By ID
  result = api_instance.update_shipment(shipment_id, update_shipment_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ShipmentsApi->update_shipment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 
 **update_shipment_request_body** | [**UpdateShipmentRequestBody**](UpdateShipmentRequestBody.md)|  | 

### Return type

[**UpdateShipmentResponseBody**](UpdateShipmentResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

