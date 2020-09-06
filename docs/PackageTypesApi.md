# ShipEngine::PackageTypesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_package_type**](PackageTypesApi.md#create_package_type) | **POST** /v1/packages | Create Custom Package Type
[**delete_package_type**](PackageTypesApi.md#delete_package_type) | **DELETE** /v1/packages/{package_id} | Delete A Custom Package By ID
[**get_package_type_by_id**](PackageTypesApi.md#get_package_type_by_id) | **GET** /v1/packages/{package_id} | Get Custom Package Type By ID
[**list_package_types**](PackageTypesApi.md#list_package_types) | **GET** /v1/packages | List Custom Package Types
[**update_package_type**](PackageTypesApi.md#update_package_type) | **PUT** /v1/packages/{package_id} | Update Custom Package Type By ID



## create_package_type

> CreatePackageTypeResponseBody create_package_type(create_package_type_request_body)

Create Custom Package Type

Create a custom package type to better assist in getting accurate rate estimates

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

api_instance = ShipEngine::PackageTypesApi.new
create_package_type_request_body = ShipEngine::CreatePackageTypeRequestBody.new # CreatePackageTypeRequestBody | 

begin
  #Create Custom Package Type
  result = api_instance.create_package_type(create_package_type_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackageTypesApi->create_package_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_package_type_request_body** | [**CreatePackageTypeRequestBody**](CreatePackageTypeRequestBody.md)|  | 

### Return type

[**CreatePackageTypeResponseBody**](CreatePackageTypeResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_package_type

> String delete_package_type(package_id)

Delete A Custom Package By ID

Delete a custom package using the ID

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

api_instance = ShipEngine::PackageTypesApi.new
package_id = 'package_id_example' # String | Package ID

begin
  #Delete A Custom Package By ID
  result = api_instance.delete_package_type(package_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackageTypesApi->delete_package_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**| Package ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_package_type_by_id

> GetPackageTypeByIdResponseBody get_package_type_by_id(package_id)

Get Custom Package Type By ID

Get Custom Package Type by ID

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

api_instance = ShipEngine::PackageTypesApi.new
package_id = 'package_id_example' # String | Package ID

begin
  #Get Custom Package Type By ID
  result = api_instance.get_package_type_by_id(package_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackageTypesApi->get_package_type_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**| Package ID | 

### Return type

[**GetPackageTypeByIdResponseBody**](GetPackageTypeByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_package_types

> ListPackageTypesResponseBody list_package_types

List Custom Package Types

List the custom package types associated with the account

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

api_instance = ShipEngine::PackageTypesApi.new

begin
  #List Custom Package Types
  result = api_instance.list_package_types
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackageTypesApi->list_package_types: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPackageTypesResponseBody**](ListPackageTypesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_package_type

> String update_package_type(package_id, update_package_type_request_body)

Update Custom Package Type By ID

Update the custom package type object by ID

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

api_instance = ShipEngine::PackageTypesApi.new
package_id = 'package_id_example' # String | Package ID
update_package_type_request_body = ShipEngine::UpdatePackageTypeRequestBody.new # UpdatePackageTypeRequestBody | 

begin
  #Update Custom Package Type By ID
  result = api_instance.update_package_type(package_id, update_package_type_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling PackageTypesApi->update_package_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_id** | **String**| Package ID | 
 **update_package_type_request_body** | [**UpdatePackageTypeRequestBody**](UpdatePackageTypeRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json

