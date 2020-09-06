# ShipEngine::ListBatchesResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batches** | [**Array&lt;Batch&gt;**](Batch.md) | Batch List | [readonly] 
**total** | **Integer** | The total number of batches the API call returned | [readonly] 
**page** | **Integer** | The page that is currently being read | [readonly] 
**pages** | **Integer** | The total number of batch pages the API call returned | [readonly] 
**links** | [**PaginationLink**](PaginationLink.md) |  | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ListBatchesResponseBody.new(batches: null,
                                 total: 10,
                                 page: 1,
                                 pages: 10,
                                 links: null)
```


