# ShipEngine::CreateShipmentsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_errors** | **Boolean** | Indicates if errors occured while creating the shipments | [default to false]
**shipments** | [**Array&lt;CreateAndValidateShipment&gt;**](CreateAndValidateShipment.md) | An array of shipments that were created. | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateShipmentsResponseBody.new(has_errors: null,
                                 shipments: null)
```


