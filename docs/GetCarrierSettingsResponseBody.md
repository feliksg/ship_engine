# ShipEngine::GetCarrierSettingsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nickname** | **String** | nickname | [optional] 
**should_hide_account_number_on_archive_doc** | **Boolean** | Indicates if the account number should be hidden on the archive documentation | [optional] 
**is_primary_account** | **Boolean** | Indicates if this is the primary UPS account | [optional] 
**pickup_type** | [**UpsPickupType**](UpsPickupType.md) |  | [optional] 
**smart_post_hub** | [**SmartPostHub**](SmartPostHub.md) |  | [optional] 
**smart_post_endorsement** | [**AncillaryServiceEndorsement**](AncillaryServiceEndorsement.md) |  | [optional] 
**use_carbon_neutral_shipping_program** | **Boolean** | The use carbon neutral shipping program | [optional] 
**use_ground_freight_pricing** | **Boolean** | The use ground freight pricing | [optional] 
**use_consolidation_services** | **Boolean** | The use consolidation services | [optional] 
**use_order_number_on_mail_innovations_labels** | **Boolean** | The use order number on mail innovations labels | [optional] 
**mail_innovations_endorsement** | [**AncillaryServiceEndorsement**](AncillaryServiceEndorsement.md) |  | [optional] 
**mail_innovations_cost_center** | **String** | mail innovations cost center | [optional] 
**use_negotiated_rates** | **Boolean** | The use negotiated rates | [optional] 
**account_postal_code** | **String** | account postal code | [optional] 
**invoice** | [**UpsInvoice**](UpsInvoice.md) | The invoice | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::GetCarrierSettingsResponseBody.new(nickname: null,
                                 should_hide_account_number_on_archive_doc: null,
                                 is_primary_account: null,
                                 pickup_type: null,
                                 smart_post_hub: null,
                                 smart_post_endorsement: null,
                                 use_carbon_neutral_shipping_program: null,
                                 use_ground_freight_pricing: null,
                                 use_consolidation_services: null,
                                 use_order_number_on_mail_innovations_labels: null,
                                 mail_innovations_endorsement: null,
                                 mail_innovations_cost_center: null,
                                 use_negotiated_rates: null,
                                 account_postal_code: null,
                                 invoice: null)
```


