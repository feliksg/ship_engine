# ShipEngine::FedexAccountSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nickname** | **String** | Account nickname | [optional] 
**pickup_type** | [**FedexPickupType**](FedexPickupType.md) |  | [optional] 
**smart_post_hub** | [**SmartPostHub**](SmartPostHub.md) |  | [optional] 
**smart_post_endorsement** | [**AncillaryServiceEndorsement**](AncillaryServiceEndorsement.md) |  | [optional] 
**is_primary_account** | **Boolean** |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::FedexAccountSettings.new(nickname: null,
                                 pickup_type: null,
                                 smart_post_hub: null,
                                 smart_post_endorsement: null,
                                 is_primary_account: null)
```


