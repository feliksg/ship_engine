# ShipEngine::TagShipmentResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **String** | A string that uniquely identifies the shipment | [readonly] 
**tag** | [**Tag**](Tag.md) | The tag that is now associated with this shipment | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::TagShipmentResponseBody.new(shipment_id: null,
                                 tag: null)
```


