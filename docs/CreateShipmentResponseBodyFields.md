# ShipEngine::CreateShipmentResponseBodyFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | **Array&lt;String&gt;** | An array of errors that occurred while creating shipment. | [optional] [readonly] 
**address_validation** | [**AddressValidationResult**](AddressValidationResult.md) | The address validation | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateShipmentResponseBodyFields.new(errors: null,
                                 address_validation: null)
```


