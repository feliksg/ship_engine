# ShipEngine::VoidLabelResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approved** | **Boolean** | Indicates whether the attempt to void the label was successful | [readonly] 
**message** | **String** |  | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::VoidLabelResponseBody.new(approved: null,
                                 message: Request for refund submitted.  This label has been voided.)
```


