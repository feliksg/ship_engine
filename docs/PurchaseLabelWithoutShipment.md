# ShipEngine::PurchaseLabelWithoutShipment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**validate_address** | [**ValidateAddress**](ValidateAddress.md) |  | [optional] 
**label_layout** | [**LabelLayout**](LabelLayout.md) |  | [optional] 
**label_format** | [**LabelFormat**](LabelFormat.md) |  | [optional] 
**label_download_type** | [**LabelDownloadType**](LabelDownloadType.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::PurchaseLabelWithoutShipment.new(validate_address: null,
                                 label_layout: null,
                                 label_format: null,
                                 label_download_type: null)
```


