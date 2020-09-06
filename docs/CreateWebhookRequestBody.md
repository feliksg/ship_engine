# ShipEngine::CreateWebhookRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event** | [**WebhookEvent**](WebhookEvent.md) |  | 
**url** | **String** | The url that the webhook sends the request to | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateWebhookRequestBody.new(event: null,
                                 url: https://[YOUR ENDPOINT ID].x.requestbin.com)
```


