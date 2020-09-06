# ShipEngine::BatchesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_batch**](BatchesApi.md#add_to_batch) | **POST** /v1/batches/{batch_id}/add | Add to a Batch
[**create_batch**](BatchesApi.md#create_batch) | **POST** /v1/batches | Create A Batch
[**delete_batch**](BatchesApi.md#delete_batch) | **DELETE** /v1/batches/{batch_id} | Delete Batch By Id
[**get_batch_by_external_id**](BatchesApi.md#get_batch_by_external_id) | **GET** /v1/batches/external_batch_id/{external_batch_id} | Get Batch By External ID
[**get_batch_by_id**](BatchesApi.md#get_batch_by_id) | **GET** /v1/batches/{batch_id} | Get Batch By ID
[**list_batch_errors**](BatchesApi.md#list_batch_errors) | **GET** /v1/batches/{batch_id}/errors | Get Batch Errors
[**list_batches**](BatchesApi.md#list_batches) | **GET** /v1/batches | List Batches
[**process_batch**](BatchesApi.md#process_batch) | **POST** /v1/batches/{batch_id}/process/labels | Process Batch ID Labels
[**remove_from_batch**](BatchesApi.md#remove_from_batch) | **POST** /v1/batches/{batch_id}/remove | Remove From Batch
[**update_batch**](BatchesApi.md#update_batch) | **PUT** /v1/batches/{batch_id} | Update Batch By Id



## add_to_batch

> String add_to_batch(batch_id, add_to_batch_request_body)

Add to a Batch

Add a Shipment or Rate to a Batch

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID
add_to_batch_request_body = ShipEngine::AddToBatchRequestBody.new # AddToBatchRequestBody | 

begin
  #Add to a Batch
  result = api_instance.add_to_batch(batch_id, add_to_batch_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->add_to_batch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 
 **add_to_batch_request_body** | [**AddToBatchRequestBody**](AddToBatchRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json


## create_batch

> CreateBatchResponseBody create_batch(create_batch_request_body)

Create A Batch

Create a Batch

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

api_instance = ShipEngine::BatchesApi.new
create_batch_request_body = ShipEngine::CreateBatchRequestBody.new # CreateBatchRequestBody | 

begin
  #Create A Batch
  result = api_instance.create_batch(create_batch_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->create_batch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_batch_request_body** | [**CreateBatchRequestBody**](CreateBatchRequestBody.md)|  | 

### Return type

[**CreateBatchResponseBody**](CreateBatchResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_batch

> String delete_batch(batch_id)

Delete Batch By Id

Delete Batch By Id

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID

begin
  #Delete Batch By Id
  result = api_instance.delete_batch(batch_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->delete_batch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_batch_by_external_id

> GetBatchByExternalIdResponseBody get_batch_by_external_id(external_batch_id)

Get Batch By External ID

Get Batch By External ID

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

api_instance = ShipEngine::BatchesApi.new
external_batch_id = '13553d7f-3c87-4771-bae1-c49bacef11cb' # String | 

begin
  #Get Batch By External ID
  result = api_instance.get_batch_by_external_id(external_batch_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->get_batch_by_external_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_batch_id** | **String**|  | 

### Return type

[**GetBatchByExternalIdResponseBody**](GetBatchByExternalIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_batch_by_id

> GetBatchByIdResponseBody get_batch_by_id(batch_id)

Get Batch By ID

Get Batch By ID

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID

begin
  #Get Batch By ID
  result = api_instance.get_batch_by_id(batch_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->get_batch_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 

### Return type

[**GetBatchByIdResponseBody**](GetBatchByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_batch_errors

> ListBatchErrorsResponseBody list_batch_errors(batch_id, opts)

Get Batch Errors

Error handling in batches are handled differently than in a single synchronous request. You must retrieve the status of your batch by [getting a batch](https://www.shipengine.com/docs/reference/get-batch-by-id/) and getting an overview of the statuses or you can list errors directly here below to get detailed information about the errors. 

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID
opts = {
  page: 1, # Integer | Return a specific page of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page is returned. 
  pagesize: 56 # Integer | 
}

begin
  #Get Batch Errors
  result = api_instance.list_batch_errors(batch_id, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->list_batch_errors: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 
 **page** | **Integer**| Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  | [optional] [default to 1]
 **pagesize** | **Integer**|  | [optional] 

### Return type

[**ListBatchErrorsResponseBody**](ListBatchErrorsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_batches

> ListBatchesResponseBody list_batches(opts)

List Batches

List Batches associated with your Shipengine account

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

api_instance = ShipEngine::BatchesApi.new
opts = {
  status: ShipEngine::BatchStatus.new, # BatchStatus | 
  page: 1, # Integer | Return a specific page of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page is returned. 
  page_size: 25, # Integer | The number of results to return per response.
  sort_dir: ShipEngine::SortDir.new, # SortDir | Controls the sort order of the query.
  sort_by: ShipEngine::BatchesSortBy.new # BatchesSortBy | 
}

begin
  #List Batches
  result = api_instance.list_batches(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->list_batches: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | [**BatchStatus**](.md)|  | [optional] 
 **page** | **Integer**| Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return per response. | [optional] [default to 25]
 **sort_dir** | [**SortDir**](.md)| Controls the sort order of the query. | [optional] 
 **sort_by** | [**BatchesSortBy**](.md)|  | [optional] 

### Return type

[**ListBatchesResponseBody**](ListBatchesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## process_batch

> String process_batch(batch_id, process_batch_request_body)

Process Batch ID Labels

Process Batch ID Labels

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID
process_batch_request_body = ShipEngine::ProcessBatchRequestBody.new # ProcessBatchRequestBody | 

begin
  #Process Batch ID Labels
  result = api_instance.process_batch(batch_id, process_batch_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->process_batch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 
 **process_batch_request_body** | [**ProcessBatchRequestBody**](ProcessBatchRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json


## remove_from_batch

> String remove_from_batch(batch_id, remove_from_batch_request_body)

Remove From Batch

Remove a shipment or rate from a batch

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID
remove_from_batch_request_body = ShipEngine::RemoveFromBatchRequestBody.new # RemoveFromBatchRequestBody | 

begin
  #Remove From Batch
  result = api_instance.remove_from_batch(batch_id, remove_from_batch_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->remove_from_batch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 
 **remove_from_batch_request_body** | [**RemoveFromBatchRequestBody**](RemoveFromBatchRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json


## update_batch

> String update_batch(batch_id)

Update Batch By Id

Update Batch By Id

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

api_instance = ShipEngine::BatchesApi.new
batch_id = 'batch_id_example' # String | Batch ID

begin
  #Update Batch By Id
  result = api_instance.update_batch(batch_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling BatchesApi->update_batch: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **batch_id** | **String**| Batch ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

