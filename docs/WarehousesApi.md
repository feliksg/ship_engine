# ShipEngine::WarehousesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_warehouse**](WarehousesApi.md#create_warehouse) | **POST** /v1/warehouses | Create Warehouse
[**delete_warehouse**](WarehousesApi.md#delete_warehouse) | **DELETE** /v1/warehouses/{warehouse_id} | Delete Warehouse By ID
[**get_warehouse_by_id**](WarehousesApi.md#get_warehouse_by_id) | **GET** /v1/warehouses/{warehouse_id} | Get Warehouse By Id
[**list_warehouses**](WarehousesApi.md#list_warehouses) | **GET** /v1/warehouses | List Warehouses
[**update_warehouse**](WarehousesApi.md#update_warehouse) | **PUT** /v1/warehouses/{warehouse_id} | Update WareHouse By Id



## create_warehouse

> CreateWarehouseResponseBody create_warehouse(create_warehouse_request_body)

Create Warehouse

Create a warehouse location that you can use to create shipping items by simply passing in the generated warehouse id. If the return address is not supplied in the request body then it is assumed that the origin address is the return address as well 

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

api_instance = ShipEngine::WarehousesApi.new
create_warehouse_request_body = ShipEngine::CreateWarehouseRequestBody.new # CreateWarehouseRequestBody | 

begin
  #Create Warehouse
  result = api_instance.create_warehouse(create_warehouse_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->create_warehouse: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_warehouse_request_body** | [**CreateWarehouseRequestBody**](CreateWarehouseRequestBody.md)|  | 

### Return type

[**CreateWarehouseResponseBody**](CreateWarehouseResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_warehouse

> String delete_warehouse(warehouse_id)

Delete Warehouse By ID

Delete a warehouse by ID

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

api_instance = ShipEngine::WarehousesApi.new
warehouse_id = 'warehouse_id_example' # String | Warehouse ID

begin
  #Delete Warehouse By ID
  result = api_instance.delete_warehouse(warehouse_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->delete_warehouse: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**| Warehouse ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_warehouse_by_id

> GetWarehouseByIdResponseBody get_warehouse_by_id(warehouse_id)

Get Warehouse By Id

Retrieve warehouse data based on the warehouse ID

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

api_instance = ShipEngine::WarehousesApi.new
warehouse_id = 'warehouse_id_example' # String | Warehouse ID

begin
  #Get Warehouse By Id
  result = api_instance.get_warehouse_by_id(warehouse_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->get_warehouse_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**| Warehouse ID | 

### Return type

[**GetWarehouseByIdResponseBody**](GetWarehouseByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_warehouses

> ListWarehousesResponseBody list_warehouses

List Warehouses

Retrieve a list of warehouses associated with this account.

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

api_instance = ShipEngine::WarehousesApi.new

begin
  #List Warehouses
  result = api_instance.list_warehouses
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->list_warehouses: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListWarehousesResponseBody**](ListWarehousesResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_warehouse

> String update_warehouse(warehouse_id, update_warehouse_request_body)

Update WareHouse By Id

Update Warehouse object information

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

api_instance = ShipEngine::WarehousesApi.new
warehouse_id = 'warehouse_id_example' # String | Warehouse ID
update_warehouse_request_body = ShipEngine::UpdateWarehouseRequestBody.new # UpdateWarehouseRequestBody | 

begin
  #Update WareHouse By Id
  result = api_instance.update_warehouse(warehouse_id, update_warehouse_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WarehousesApi->update_warehouse: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **warehouse_id** | **String**| Warehouse ID | 
 **update_warehouse_request_body** | [**UpdateWarehouseRequestBody**](UpdateWarehouseRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json

