# ShipEngine::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_source** | [**ErrorSource**](ErrorSource.md) |  | 
**error_type** | [**ErrorType**](ErrorType.md) |  | 
**error_code** | [**ErrorCode**](ErrorCode.md) |  | 
**message** | **String** | An error message associated with the failed API call | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Error.new(error_source: null,
                                 error_type: null,
                                 error_code: null,
                                 message: Body of request cannot be null.)
```


