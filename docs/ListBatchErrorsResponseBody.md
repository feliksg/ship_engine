# ShipEngine::ListBatchErrorsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**Array&lt;BatchResponseError&gt;**](BatchResponseError.md) | The errors currently associated with the batch | [readonly] 
**links** | [**PaginationLink**](PaginationLink.md) |  | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ListBatchErrorsResponseBody.new(errors: null,
                                 links: null)
```


