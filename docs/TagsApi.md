# ShipEngine::TagsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tag**](TagsApi.md#create_tag) | **POST** /v1/tags/{tag_name} | Create a New Tag
[**delete_tag**](TagsApi.md#delete_tag) | **DELETE** /v1/tags/{tag_name} | Delete Tag
[**list_tags**](TagsApi.md#list_tags) | **GET** /v1/tags | Get Tags
[**rename_tag**](TagsApi.md#rename_tag) | **PUT** /v1/tags/{tag_name}/{new_tag_name} | Update Tag Name



## create_tag

> CreateTagResponseBody create_tag(tag_name)

Create a New Tag

Create a new Tag for customizing how you track your shipments

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

api_instance = ShipEngine::TagsApi.new
tag_name = 'tag_name_example' # String | 

begin
  #Create a New Tag
  result = api_instance.create_tag(tag_name)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->create_tag: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 

### Return type

[**CreateTagResponseBody**](CreateTagResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_tag

> String delete_tag(tag_name)

Delete Tag

Delete a tag that is no longer needed

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

api_instance = ShipEngine::TagsApi.new
tag_name = 'tag_name_example' # String | 

begin
  #Delete Tag
  result = api_instance.delete_tag(tag_name)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->delete_tag: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## list_tags

> ListTagsResponseBody list_tags

Get Tags

Get a list of all tags associated with an account.

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

api_instance = ShipEngine::TagsApi.new

begin
  #Get Tags
  result = api_instance.list_tags
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->list_tags: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListTagsResponseBody**](ListTagsResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rename_tag

> String rename_tag(tag_name, new_tag_name)

Update Tag Name

Change a tag name while still keeping the relevant shipments attached to it

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

api_instance = ShipEngine::TagsApi.new
tag_name = 'tag_name_example' # String | 
new_tag_name = 'new_tag_name_example' # String | 

begin
  #Update Tag Name
  result = api_instance.rename_tag(tag_name, new_tag_name)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling TagsApi->rename_tag: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag_name** | **String**|  | 
 **new_tag_name** | **String**|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json

