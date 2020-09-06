# ShipEngine::ErrorResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **String** | A UUID that uniquely identifies the request id. This can be given to the support team to help debug non-trivial issues that may occur  | 
**errors** | [**Array&lt;Error&gt;**](Error.md) | The errors associated with the failed API call | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ErrorResponseBody.new(request_id: null,
                                 errors: null)
```


