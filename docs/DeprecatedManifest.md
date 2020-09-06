# ShipEngine::DeprecatedManifest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**manifest_id** | **String** | A string that uniquely identifies the manifest | [optional] 
**form_id** | **String** | A string that uniquely identifies the form | [optional] 
**created_at** | **DateTime** | The date-time that the manifest was created | [optional] 
**ship_date** | **DateTime** | The date-time that the manifests shipments will be picked up | [optional] 
**shipments** | **Integer** | The number of shipments that are included in this manifest | [optional] [readonly] 
**warehouse_id** | **String** | A string that uniquely identifies the warehouse | [optional] 
**submission_id** | **String** | A string that uniquely identifies the submission | [optional] 
**carrier_id** | **String** | A string that uniquely identifies the carrier | [optional] 
**manifest_download** | [**ManifestDownload**](ManifestDownload.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::DeprecatedManifest.new(manifest_id: null,
                                 form_id: null,
                                 created_at: 2019-07-12T13:37:39.050Z,
                                 ship_date: 2019-07-12T13:37:39.050Z,
                                 shipments: 100,
                                 warehouse_id: null,
                                 submission_id: 9.475711899564878E+21,
                                 carrier_id: null,
                                 manifest_download: null)
```


