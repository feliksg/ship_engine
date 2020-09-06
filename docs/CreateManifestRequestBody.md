# ShipEngine::CreateManifestRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_id** | **String** | A string that uniquely identifies the carrier | 
**excluded_label_ids** | **Array&lt;String&gt;** | The list of label ids to exclude from the manifest | [optional] 
**label_ids** | **Array&lt;String&gt;** | The list of label ids to include in the manifest | 
**warehouse_id** | **String** | A string that uniquely identifies the warehouse | 
**ship_date** | **DateTime** | The ship date that the shipment will be sent out on | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateManifestRequestBody.new(carrier_id: null,
                                 excluded_label_ids: null,
                                 label_ids: null,
                                 warehouse_id: null,
                                 ship_date: 2018-09-23T15:00Z)
```


