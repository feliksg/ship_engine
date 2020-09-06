# ShipEngine::ListShipmentErrorsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;ShipmentResponseError&gt;**](ShipmentResponseError.md) | The errors associated with the shipment. | [readonly] 
**links** | [**PaginationLink**](PaginationLink.md) |  | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ListShipmentErrorsResponseBody.new(errors: null,
                                 links: null)
```


