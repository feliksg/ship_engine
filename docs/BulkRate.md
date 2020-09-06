# ShipEngine::BulkRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_request_id** | **String** | A string that uniquely identifies the rate request | [readonly] 
**shipment_id** | **String** | A string that uniquely identifies the shipment | [readonly] 
**created_at** | **DateTime** |  | [readonly] 
**status** | [**RateResponseStatus**](RateResponseStatus.md) |  | [readonly] 
**errors** | [**Array&lt;Error&gt;**](Error.md) | An array of errors that were returned while retrieving the bulk rate | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::BulkRate.new(rate_request_id: null,
                                 shipment_id: null,
                                 created_at: null,
                                 status: null,
                                 errors: null)
```


