# ShipEngine::CreateManifestResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**manifests** | [**Array&lt;Manifest&gt;**](Manifest.md) |  | [optional] 
**manifest_id** | **String** | A string that uniquely identifies the manifest | 
**form_id** | **String** | A string that uniquely identifies the form | 
**created_at** | **DateTime** | The date-time that the manifest was created | 
**ship_date** | **DateTime** | The date-time that the manifests shipments will be picked up | 
**shipments** | **Integer** | The number of shipments that are included in this manifest | [readonly] 
**warehouse_id** | **String** | A string that uniquely identifies the warehouse | 
**submission_id** | **String** | A string that uniquely identifies the submission | 
**carrier_id** | **String** | A string that uniquely identifies the carrier | 
**manifest_download** | [**ManifestDownload**](ManifestDownload.md) |  | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CreateManifestResponseBody.new(manifests: null,
                                 manifest_id: null,
                                 form_id: null,
                                 created_at: 2019-07-12T13:37:39.050Z,
                                 ship_date: 2019-07-12T13:37:39.050Z,
                                 shipments: 100,
                                 warehouse_id: null,
                                 submission_id: 9.475711899564878E+21,
                                 carrier_id: null,
                                 manifest_download: null)
```


