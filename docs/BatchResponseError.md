# ShipEngine::BatchResponseError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Error message associated with the shipment. | [optional] [readonly] 
**shipment_id** | **String** | A string that uniquely identifies the shipment | [optional] [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::BatchResponseError.new(error: Recipient address has not been verified.,
                                 shipment_id: null)
```


