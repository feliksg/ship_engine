# ShipEngine::ListLabelsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**labels** | **Array&lt;Object&gt;** | The labels that matched the query criteria.  If no matching labels were found, then this array is empty; otherwise, it contains one page of results.  The last page of results may have fewer labels than the &#x60;page_size&#x60;.  | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ListLabelsResponseBody.new(labels: null)
```


