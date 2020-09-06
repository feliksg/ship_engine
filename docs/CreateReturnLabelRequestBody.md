# ShipEngine::CreateReturnLabelRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**charge_event** | [**LabelChargeEvent**](LabelChargeEvent.md) | The label charge event.  | [optional] 
**label_layout** | [**LabelLayout**](LabelLayout.md) | The layout (size) that you want the label to be in.  The &#x60;label_format&#x60; determines which sizes are allowed.  &#x60;4x6&#x60; is supported for all label formats, whereas &#x60;letter&#x60; (8.5\&quot; x 11\&quot;) is only supported for &#x60;pdf&#x60; format.  | [optional] 
**label_format** | [**LabelFormat**](LabelFormat.md) | The file format that you want the label to be in.  We recommend &#x60;pdf&#x60; format because it is supported by all carriers, whereas some carriers do not support the &#x60;png&#x60; or &#x60;zpl&#x60; formats.  | [optional] 
**label_download_type** | [**LabelDownloadType**](LabelDownloadType.md) |  | [optional] 
**label_image_id** | **String** | The label image resource that was used to create a custom label image. | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateReturnLabelRequestBody.new(charge_event: null,
                                 label_layout: null,
                                 label_format: null,
                                 label_download_type: null,
                                 label_image_id: null)
```


