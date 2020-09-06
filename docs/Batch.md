# ShipEngine::Batch

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label_layout** | [**LabelLayout**](LabelLayout.md) | label layout | [readonly] 
**label_format** | [**LabelFormat**](LabelFormat.md) |  | [readonly] 
**batch_id** | **String** | A string that uniquely identifies the batch | [readonly] 
**external_batch_id** | **String** | A string that uniquely identifies the external batch | [readonly] 
**batch_notes** | **String** | Custom notes you can add for each created batch | [readonly] [default to &#39;&#39;]
**created_at** | **DateTime** | The date and time the batch was created in ShipEngine | [readonly] 
**processed_at** | **DateTime** | The date and time the batch was processed in ShipEngine | [readonly] 
**errors** | **Integer** | The number of errors that occurred while generating the batch | [readonly] 
**warnings** | **Integer** | The number of warnings that occurred while generating the batch | [readonly] 
**completed** | **Integer** | The number of labels generated in the batch | [readonly] 
**forms** | **Integer** | The number of forms for customs that are available for download | [readonly] 
**count** | **Integer** | The total of errors, warnings, and completed properties | [readonly] 
**batch_shipments_url** | [**OptionalLink**](OptionalLink.md) | The batch shipments endpoint | 
**batch_labels_url** | [**OptionalLink**](OptionalLink.md) | Link to batch labels query | 
**batch_errors_url** | [**OptionalLink**](OptionalLink.md) | Link to batch errors endpoint | [readonly] 
**label_download** | [**LabelDownload**](LabelDownload.md) | The label download for the batch | [readonly] 
**form_download** | [**OptionalLink**](OptionalLink.md) | The form download for any customs that are needed | [readonly] 
**status** | [**BatchStatus**](BatchStatus.md) |  | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Batch.new(label_layout: null,
                                 label_format: null,
                                 batch_id: null,
                                 external_batch_id: null,
                                 batch_notes: Batch for morning shipment,
                                 created_at: null,
                                 processed_at: null,
                                 errors: 2,
                                 warnings: 1,
                                 completed: 1,
                                 forms: 3,
                                 count: 2,
                                 batch_shipments_url: null,
                                 batch_labels_url: null,
                                 batch_errors_url: null,
                                 label_download: null,
                                 form_download: null,
                                 status: null)
```


