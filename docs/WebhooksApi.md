# ShipEngine::WebhooksApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /v1/environment/webhooks | Create a Webhook
[**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /v1/environment/webhooks/{webhook_id} | Delete Webhook By ID
[**get_webhook_by_id**](WebhooksApi.md#get_webhook_by_id) | **GET** /v1/environment/webhooks/{webhook_id} | Get Webhook By ID
[**list_webhooks**](WebhooksApi.md#list_webhooks) | **GET** /v1/environment/webhooks | List Webhooks
[**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /v1/environment/webhooks/{webhook_id} | Update a Webhook



## create_webhook

> CreateWebhookResponseBody create_webhook(create_webhook_request_body)

Create a Webhook

Create a webook for specific events in the environment.

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

api_instance = ShipEngine::WebhooksApi.new
create_webhook_request_body = ShipEngine::CreateWebhookRequestBody.new # CreateWebhookRequestBody | 

begin
  #Create a Webhook
  result = api_instance.create_webhook(create_webhook_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WebhooksApi->create_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_webhook_request_body** | [**CreateWebhookRequestBody**](CreateWebhookRequestBody.md)|  | 

### Return type

[**CreateWebhookResponseBody**](CreateWebhookResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> String delete_webhook(webhook_id)

Delete Webhook By ID

Delete a webhook

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

api_instance = ShipEngine::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook ID

begin
  #Delete Webhook By ID
  result = api_instance.delete_webhook(webhook_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WebhooksApi->delete_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| Webhook ID | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json


## get_webhook_by_id

> GetWebhookByIdResponseBody get_webhook_by_id(webhook_id)

Get Webhook By ID

Retrieve individual webhook by an ID

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

api_instance = ShipEngine::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook ID

begin
  #Get Webhook By ID
  result = api_instance.get_webhook_by_id(webhook_id)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhook_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| Webhook ID | 

### Return type

[**GetWebhookByIdResponseBody**](GetWebhookByIdResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks

> Array&lt;Webhook&gt; list_webhooks

List Webhooks

List all webhooks currently enabled for the account.

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

api_instance = ShipEngine::WebhooksApi.new

begin
  #List Webhooks
  result = api_instance.list_webhooks
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WebhooksApi->list_webhooks: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Webhook&gt;**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> String update_webhook(webhook_id, update_webhook_request_body)

Update a Webhook

Update the webhook url property

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

api_instance = ShipEngine::WebhooksApi.new
webhook_id = 'webhook_id_example' # String | Webhook ID
update_webhook_request_body = ShipEngine::UpdateWebhookRequestBody.new # UpdateWebhookRequestBody | 

begin
  #Update a Webhook
  result = api_instance.update_webhook(webhook_id, update_webhook_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_id** | **String**| Webhook ID | 
 **update_webhook_request_body** | [**UpdateWebhookRequestBody**](UpdateWebhookRequestBody.md)|  | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: text/plain, application/json

