# ShipEngine::InternationalShipmentOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contents** | [**PackageContents**](PackageContents.md) | The type of contents in this shipment.  This may impact import duties or customs treatment. | 
**non_delivery** | [**NonDelivery**](NonDelivery.md) | Indicates what to do if a package is unable to be delivered. | 
**customs_items** | [**Array&lt;CustomsItem&gt;**](CustomsItem.md) | Customs declarations for each item in the shipment. | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::InternationalShipmentOptions.new(contents: null,
                                 non_delivery: null,
                                 customs_items: null)
```


