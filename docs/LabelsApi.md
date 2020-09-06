# ShipEngine::LabelsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_label**](LabelsApi.md#create_label) | **POST** /v1/labels | Purchase Label
[**create_label_from_rate**](LabelsApi.md#create_label_from_rate) | **POST** /v1/labels/rates/{rate_id} | Purchase Label with Rate ID
[**create_label_from_shipment**](LabelsApi.md#create_label_from_shipment) | **POST** /v1/labels/shipment/{shipment_id} | Purchase Label with Shipment ID
[**create_return_label**](LabelsApi.md#create_return_label) | **POST** /v1/labels/{label_id}/return | Create a return label
[**get_label_by_external_shipment_id**](LabelsApi.md#get_label_by_external_shipment_id) | **GET** /v1/labels/external_shipment_id/{external_shipment_id} | Get Label By External Shipment ID
[**get_label_by_id**](LabelsApi.md#get_label_by_id) | **GET** /v1/labels/{label_id} | Get Label By ID
[**get_tracking_log_from_label**](LabelsApi.md#get_tracking_log_from_label) | **GET** /v1/labels/{label_id}/track | Get Label Tracking Information
[**list_labels**](LabelsApi.md#list_labels) | **GET** /v1/labels | List labels
[**void_label**](LabelsApi.md#void_label) | **PUT** /v1/labels/{label_id}/void | Void a Label By ID



## create_label

> CreateLabelResponseBody create_label(create_label_request_body)

Purchase Label

Purchase and print a label for shipment

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

api_instance = ShipEngine::LabelsApi.new
create_label_request_body = ShipEngine::CreateLabelRequestBody.new # CreateLabelRequestBody | 

begin
  #Purchase Label
  result = api_instance.create_label(create_label_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->create_label: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_label_request_body** | [**CreateLabelRequestBody**](CreateLabelRequestBody.md)|  | 

### Return type

[**CreateLabelResponseBody**](CreateLabelResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_label_from_rate

> CreateLabelFromRateResponseBody create_label_from_rate(rate_id, create_label_from_rate_request_body)

Purchase Label with Rate ID

When retrieving rates for shipments using the `/rates` endpoint, the returned information contains a `rate_id` property that can be used to generate a label without having to refill in the shipment information repeatedly. 

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

api_instance = ShipEngine::LabelsApi.new
rate_id = 'rate_id_example' # String | Rate ID
create_label_from_rate_request_body = ShipEngine::CreateLabelFromRateRequestBody.new # CreateLabelFromRateRequestBody | 

begin
  #Purchase Label with Rate ID
  result = api_instance.create_label_from_rate(rate_id, create_label_from_rate_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->create_label_from_rate: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rate_id** | **String**| Rate ID | 
 **create_label_from_rate_request_body** | [**CreateLabelFromRateRequestBody**](CreateLabelFromRateRequestBody.md)|  | 

### Return type

[**CreateLabelFromRateResponseBody**](CreateLabelFromRateResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_label_from_shipment

> CreateLabelFromShipmentResponseBody create_label_from_shipment(shipment_id, create_label_from_shipment_request_body)

Purchase Label with Shipment ID

Purchase a label using a shipment ID that has already been created with the desired address and package info. 

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

api_instance = ShipEngine::LabelsApi.new
shipment_id = 'shipment_id_example' # String | Shipment ID
create_label_from_shipment_request_body = ShipEngine::CreateLabelFromShipmentRequestBody.new # CreateLabelFromShipmentRequestBody | 

begin
  #Purchase Label with Shipment ID
  result = api_instance.create_label_from_shipment(shipment_id, create_label_from_shipment_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->create_label_from_shipment: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipment_id** | **String**| Shipment ID | 
 **create_label_from_shipment_request_body** | [**CreateLabelFromShipmentRequestBody**](CreateLabelFromShipmentRequestBody.md)|  | 

### Return type

[**CreateLabelFromShipmentResponseBody**](CreateLabelFromShipmentResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_return_label

> CreateReturnLabelResponseBody create_return_label(label_id, create_return_label_request_body)

Create a return label

Create a return label

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

api_instance = ShipEngine::LabelsApi.new
label_id = 'label_id_example' # String | Label ID
create_return_label_request_body = ShipEngine::CreateReturnLabelRequestBody.new # CreateReturnLabelRequestBody | 

begin
  #Create a return label
  result = api_instance.create_return_label(label_id, create_return_label_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->create_return_label: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**| Label ID | 
 **create_return_label_request_body** | [**CreateReturnLabelRequestBody**](CreateReturnLabelRequestBody.md)|  | 

### Return type

[**CreateReturnLabelResponseBody**](CreateReturnLabelResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_label_by_external_shipment_id

> GetLabelByExternalShipmentIdResponseBody get_label_by_external_shipment_id(external_shipment_id, opts)

Get Label By External Shipment ID

Find a label by using the external shipment id that was used during label creation 

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

api_instance = ShipEngine::LabelsApi.new
external_shipment_id = '0bcb569d-1727-4ff9-ab49-b2fec0cee5ae' # String | 
opts = {
  label_download_type: ShipEngine::LabelDownloadType.new # LabelDownloadType | 
}

begin
  #Get Label By External Shipment ID
  result = api_instance.get_label_by_external_shipment_id(external_shipment_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->get_label_by_external_shipment_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_shipment_id** | **String**|  | 
 **label_download_type** | [**LabelDownloadType**](.md)|  | [optional] 

### Return type

[**GetLabelByExternalShipmentIdResponseBody**](GetLabelByExternalShipmentIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_label_by_id

> GetLabelByIdResponseBody get_label_by_id(label_id, opts)

Get Label By ID

Retrieve information for individual labels.

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

api_instance = ShipEngine::LabelsApi.new
label_id = 'label_id_example' # String | Label ID
opts = {
  label_download_type: ShipEngine::LabelDownloadType.new # LabelDownloadType | 
}

begin
  #Get Label By ID
  result = api_instance.get_label_by_id(label_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->get_label_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**| Label ID | 
 **label_download_type** | [**LabelDownloadType**](.md)|  | [optional] 

### Return type

[**GetLabelByIdResponseBody**](GetLabelByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tracking_log_from_label

> GetTrackingLogFromLabelResponseBody get_tracking_log_from_label(label_id)

Get Label Tracking Information

Retrieve the label's tracking information

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

api_instance = ShipEngine::LabelsApi.new
label_id = 'label_id_example' # String | Label ID

begin
  #Get Label Tracking Information
  result = api_instance.get_tracking_log_from_label(label_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->get_tracking_log_from_label: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**| Label ID | 

### Return type

[**GetTrackingLogFromLabelResponseBody**](GetTrackingLogFromLabelResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_labels

> ListLabelsResponseBody list_labels(opts)

List labels

This endpoint returns a list of labels that you've [created](https://www.shipengine.com/docs/labels/create-a-label/). You can optionally filter the results as well as control their sort order and the number of results returned at a time.  By default, all labels are returned, 25 at a time, starting with the most recently created ones.  You can combine multiple filter options to narrow-down the results.  For example, if you only want to get your UPS labels for your east coast warehouse you could query by both `warehouse_id` and `carrier_id` 

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

api_instance = ShipEngine::LabelsApi.new
opts = {
  label_status: ShipEngine::LabelStatus.new, # LabelStatus | Only return labels that are currently in the specified status
  service_code: 'usps_first_class_mail', # String | Only return labels for a specific [carrier service](https://www.shipengine.com/docs/shipping/use-a-carrier-service/)
  carrier_id: 'carrier_id_example', # String | Only return labels for a specific [carrier account](https://www.shipengine.com/docs/carriers/setup/)
  tracking_number: '9.405511899223197E+21', # String | Only return labels with a specific tracking number
  batch_id: 'batch_id_example', # String | Only return labels that were created in a specific [batch](https://www.shipengine.com/docs/labels/bulk/)
  rate_id: 'rate_id_example', # String | Rate ID
  shipment_id: 'shipment_id_example', # String | Shipment ID
  warehouse_id: 'warehouse_id_example', # String | Only return labels that originate from a specific [warehouse](https://www.shipengine.com/docs/shipping/ship-from-a-warehouse/)
  created_at_start: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Only return labels that were created on or after a specific date/time
  created_at_end: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Only return labels that were created on or before a specific date/time
  page: 1, # Integer | Return a specific page of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page is returned. 
  page_size: 25, # Integer | The number of results to return per response.
  sort_dir: ShipEngine::SortDir.new, # SortDir | Controls the sort order of the query.
  sort_by: 'created_at' # String | Controls which field the query is sorted by.
}

begin
  #List labels
  result = api_instance.list_labels(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->list_labels: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_status** | [**LabelStatus**](.md)| Only return labels that are currently in the specified status | [optional] 
 **service_code** | **String**| Only return labels for a specific [carrier service](https://www.shipengine.com/docs/shipping/use-a-carrier-service/) | [optional] 
 **carrier_id** | **String**| Only return labels for a specific [carrier account](https://www.shipengine.com/docs/carriers/setup/) | [optional] 
 **tracking_number** | **String**| Only return labels with a specific tracking number | [optional] 
 **batch_id** | **String**| Only return labels that were created in a specific [batch](https://www.shipengine.com/docs/labels/bulk/) | [optional] 
 **rate_id** | **String**| Rate ID | [optional] 
 **shipment_id** | **String**| Shipment ID | [optional] 
 **warehouse_id** | **String**| Only return labels that originate from a specific [warehouse](https://www.shipengine.com/docs/shipping/ship-from-a-warehouse/) | [optional] 
 **created_at_start** | **DateTime**| Only return labels that were created on or after a specific date/time | [optional] 
 **created_at_end** | **DateTime**| Only return labels that were created on or before a specific date/time | [optional] 
 **page** | **Integer**| Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return per response. | [optional] [default to 25]
 **sort_dir** | [**SortDir**](.md)| Controls the sort order of the query. | [optional] 
 **sort_by** | **String**| Controls which field the query is sorted by. | [optional] [default to &#39;created_at&#39;]

### Return type

[**ListLabelsResponseBody**](ListLabelsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## void_label

> VoidLabelResponseBody void_label(label_id)

Void a Label By ID

Void a label by ID to get a refund.

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

api_instance = ShipEngine::LabelsApi.new
label_id = 'label_id_example' # String | Label ID

begin
  #Void a Label By ID
  result = api_instance.void_label(label_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling LabelsApi->void_label: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label_id** | **String**| Label ID | 

### Return type

[**VoidLabelResponseBody**](VoidLabelResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

