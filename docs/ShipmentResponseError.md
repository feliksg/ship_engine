# ShipEngine::ShipmentResponseError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | **String** | Shipment error message | [readonly] 
**shipment_id** | **String** | A string that uniquely identifies the shipment. | [readonly] 
**external_shipment_id** | **String** | A string that uniquely identifies the external shipment. | [optional] [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ShipmentResponseError.new(error: null,
                                 shipment_id: null,
                                 external_shipment_id: null)
```


