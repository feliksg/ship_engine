# ShipEngine::CreateBatchRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_batch_id** | **String** | A string that uniquely identifies the external batch | [optional] 
**batch_notes** | **String** | Add custom messages for a particular batch | [optional] 
**shipment_ids** | **Array&lt;String&gt;** | Array of shipment IDs used in the batch | [optional] 
**rate_ids** | **Array&lt;String&gt;** | Array of rate IDs used in the batch | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateBatchRequestBody.new(external_batch_id: null,
                                 batch_notes: This is my batch,
                                 shipment_ids: null,
                                 rate_ids: null)
```


