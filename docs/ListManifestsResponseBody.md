# ShipEngine::ListManifestsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**manifests** | [**Array&lt;Manifest&gt;**](Manifest.md) | The list of available manifests | [readonly] 
**total** | **Integer** | The total number of manifests returned | [readonly] 
**page** | **Integer** | Current page of the list manifests results | [readonly] 
**pages** | **Integer** | Total number of pages for list manifests results | [readonly] 
**links** | [**PaginationLink**](PaginationLink.md) | Helpful links to other pages of results | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ListManifestsResponseBody.new(manifests: null,
                                 total: 3,
                                 page: 3,
                                 pages: 4,
                                 links: null)
```


