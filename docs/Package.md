# ShipEngine::Package

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_code** | **String** | The [package type](https://www.shipengine.com/docs/reference/list-carrier-packages/), such as &#x60;thick_envelope&#x60;, &#x60;small_flat_rate_box&#x60;, &#x60;large_package&#x60;, etc.  The code &#x60;package&#x60; indicates a custom or unknown package type.  | [optional] 
**weight** | [**Weight**](Weight.md) | The package weight | 
**dimensions** | [**Dimensions**](Dimensions.md) | The package dimensions | [optional] 
**insured_value** | [**MonetaryValue**](MonetaryValue.md) | The insured value of the package.  Requires the &#x60;insurance_provider&#x60; field of the shipment to be set.  | [optional] 
**tracking_number** | **String** | The tracking number for the package.  The format depends on the carrier.  | [optional] [readonly] 
**label_messages** | [**LabelMessages**](LabelMessages.md) |  | [optional] 
**external_package_id** | **String** | An external package id. | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Package.new(package_code: null,
                                 weight: null,
                                 dimensions: null,
                                 insured_value: null,
                                 tracking_number: null,
                                 label_messages: null,
                                 external_package_id: null)
```


