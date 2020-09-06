# ShipEngine::Webhook

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webhook_id** | **String** | A string that uniquely identifies the webhook | [optional] [readonly] 
**url** | **String** | The url that the webhook sends the request to | [optional] 
**event** | [**WebhookEvent**](WebhookEvent.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Webhook.new(webhook_id: null,
                                 url: https://[YOUR ENDPOINT ID].x.requestbin.com,
                                 event: null)
```


