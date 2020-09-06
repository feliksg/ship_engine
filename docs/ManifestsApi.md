# ShipEngine::ManifestsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_manifest**](ManifestsApi.md#create_manifest) | **POST** /v1/manifests | Create Manifest
[**get_manifest_by_id**](ManifestsApi.md#get_manifest_by_id) | **GET** /v1/manifests/{manifest_id} | Get Manifest By Id
[**list_manifests**](ManifestsApi.md#list_manifests) | **GET** /v1/manifests | List Manifests



## create_manifest

> CreateManifestResponseBody create_manifest(create_manifest_request_body)

Create Manifest

Each ShipEngine manifest is created for a specific warehouse, so you'll need to provide the warehouse_id rather than the ship_from address. You can create a warehouse for each location that you want to create manifests for. 

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

api_instance = ShipEngine::ManifestsApi.new
create_manifest_request_body = ShipEngine::CreateManifestRequestBody.new # CreateManifestRequestBody | 

begin
  #Create Manifest
  result = api_instance.create_manifest(create_manifest_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ManifestsApi->create_manifest: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_manifest_request_body** | [**CreateManifestRequestBody**](CreateManifestRequestBody.md)|  | 

### Return type

[**CreateManifestResponseBody**](CreateManifestResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_manifest_by_id

> GetManifestByIdResponseBody get_manifest_by_id(manifest_id)

Get Manifest By Id

Get Manifest By Id

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

api_instance = ShipEngine::ManifestsApi.new
manifest_id = 'manifest_id_example' # String | The Manifest Id

begin
  #Get Manifest By Id
  result = api_instance.get_manifest_by_id(manifest_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ManifestsApi->get_manifest_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **manifest_id** | **String**| The Manifest Id | 

### Return type

[**GetManifestByIdResponseBody**](GetManifestByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_manifests

> ListManifestsResponseBody list_manifests(opts)

List Manifests

Similar to querying shipments, we allow you to query manifests since there will likely be a large number over a long period of time.

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

api_instance = ShipEngine::ManifestsApi.new
opts = {
  warehouse_id: 'warehouse_id_example', # String | Warehouse ID
  ship_date_start: DateTime.parse('2018-09-23T15:00:00.000Z'), # DateTime | ship date start range
  ship_date_end: DateTime.parse('2018-09-23T15:00:00.000Z'), # DateTime | ship date end range
  created_at_start: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Used to create a filter for when a resource was created (ex. A shipment that was created after a certain time)
  created_at_end: DateTime.parse('2019-03-12T19:24:13.657Z'), # DateTime | Used to create a filter for when a resource was created, (ex. A shipment that was created before a certain time)
  carrier_id: 'carrier_id_example', # String | Carrier ID
  page: 1, # Integer | Return a specific page of results. Defaults to the first page. If set to a number that's greater than the number of pages of results, an empty page is returned. 
  page_size: 25, # Integer | The number of results to return per response.
  label_ids: ['label_ids_example'] # Array<String> | 
}

begin
  #List Manifests
  result = api_instance.list_manifests(opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling ManifestsApi->list_manifests: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**| Warehouse ID | [optional] 
 **ship_date_start** | **DateTime**| ship date start range | [optional] 
 **ship_date_end** | **DateTime**| ship date end range | [optional] 
 **created_at_start** | **DateTime**| Used to create a filter for when a resource was created (ex. A shipment that was created after a certain time) | [optional] 
 **created_at_end** | **DateTime**| Used to create a filter for when a resource was created, (ex. A shipment that was created before a certain time) | [optional] 
 **carrier_id** | **String**| Carrier ID | [optional] 
 **page** | **Integer**| Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  | [optional] [default to 1]
 **page_size** | **Integer**| The number of results to return per response. | [optional] [default to 25]
 **label_ids** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**ListManifestsResponseBody**](ListManifestsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

