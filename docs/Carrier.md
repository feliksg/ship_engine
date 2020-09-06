# ShipEngine::Carrier

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_id** | **String** | A string that uniquely identifies the carrier. | [optional] [readonly] 
**carrier_code** | **String** | A string that uniquely identifies the carrier. | [optional] 
**account_number** | **String** | The account number that the carrier is connected to. | [optional] [readonly] 
**requires_funded_amount** | **Boolean** | Indicates whether the carrier requires funding to use its services | [optional] [readonly] 
**balance** | **Float** | Current available balance | [optional] [readonly] 
**nickname** | **String** | Nickname given to the account when initially setting up the carrier. | [optional] [readonly] 
**friendly_name** | **String** | Screen readable name | [optional] [readonly] 
**primary** | **Boolean** | Is this the primary carrier that is used by default when no carrier is specified in label/shipment creation | [optional] [readonly] 
**has_multi_package_supporting_services** | **Boolean** | Carrier supports multiple packages per shipment | [optional] [readonly] 
**supports_label_messages** | **Boolean** | The carrier supports adding custom label messages to an order. | [optional] [readonly] 
**services** | [**Array&lt;Service&gt;**](Service.md) | A list of services that are offered by the carrier | [optional] [readonly] 
**packages** | [**Array&lt;PackageType&gt;**](PackageType.md) | A list of package types that are supported by the carrier | [optional] [readonly] 
**options** | [**Array&lt;CarrierAdvancedOption&gt;**](CarrierAdvancedOption.md) | A list of options that are available to that carrier | [optional] [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Carrier.new(carrier_id: null,
                                 carrier_code: null,
                                 account_number: account_570827,
                                 requires_funded_amount: null,
                                 balance: 3799.52,
                                 nickname: ShipEngine Account - Stamps.com,
                                 friendly_name: Stamps.com,
                                 primary: null,
                                 has_multi_package_supporting_services: null,
                                 supports_label_messages: null,
                                 services: null,
                                 packages: null,
                                 options: null)
```


