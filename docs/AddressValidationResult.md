# ShipEngine::AddressValidationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**AddressValidationStatus**](AddressValidationStatus.md) |  | 
**original_address** | [**Address**](Address.md) | The original address that was sent for validation | 
**matched_address** | [**Address**](Address.md) | The matched address found by the Shipengine API | [readonly] 
**messages** | [**Array&lt;ResponseMessage&gt;**](ResponseMessage.md) | The list of messages that were generated during the address validation request. | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::AddressValidationResult.new(status: null,
                                 original_address: null,
                                 matched_address: null,
                                 messages: null)
```


