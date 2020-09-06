# ShipEngine::RatesInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rates** | [**Array&lt;Rate&gt;**](Rate.md) | An array of shipment rates | [optional] [readonly] 
**invalid_rates** | [**Array&lt;Rate&gt;**](Rate.md) | An array of invalid shipment rates | [optional] [readonly] 
**rate_request_id** | **String** | A string that uniquely identifies the rate request | [optional] [readonly] 
**shipment_id** | **String** | A string that uniquely identifies the shipment | [optional] [readonly] 
**created_at** | **String** | When the rate was created | [optional] 
**status** | [**RateResponseStatus**](RateResponseStatus.md) |  | [optional] [readonly] 
**errors** | [**Array&lt;Error&gt;**](Error.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::RatesInformation.new(rates: null,
                                 invalid_rates: null,
                                 rate_request_id: null,
                                 shipment_id: null,
                                 created_at: null,
                                 status: null,
                                 errors: null)
```


