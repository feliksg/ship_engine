# ShipEngine::ResponseMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | [**AddressValidationCode**](AddressValidationCode.md) |  | [optional] [readonly] 
**message** | **String** | Message explaining the address validation error | [optional] [readonly] 
**type** | [**AddressValidationMessageType**](AddressValidationMessageType.md) |  | [optional] [readonly] 
**detail_code** | [**AddressValidationDetailCode**](AddressValidationDetailCode.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ResponseMessage.new(code: null,
                                 message: Invalid Postal Code,
                                 type: null,
                                 detail_code: null)
```


