# ShipEngine::ProcessBatchRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ship_date** | **DateTime** | The Ship date the batch is being processed for | [optional] 
**label_layout** | [**LabelLayout**](LabelLayout.md) |  | [optional] [default to &#39;4x6&#39;]
**label_format** | [**LabelFormat**](LabelFormat.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ProcessBatchRequestBody.new(ship_date: null,
                                 label_layout: null,
                                 label_format: null)
```


