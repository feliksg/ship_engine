# ShipEngine::Rate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**rate_id** | **String** | A string that uniquely identifies the rate | [readonly] 
**rate_type** | [**RateType**](RateType.md) |  | [readonly] 
**carrier_id** | **String** | A string that uniquely identifies the carrier | [readonly] 
**shipping_amount** | [**MonetaryValue**](MonetaryValue.md) | The shipping amount | [readonly] 
**insurance_amount** | [**MonetaryValue**](MonetaryValue.md) | The insurance amount | [readonly] 
**confirmation_amount** | [**MonetaryValue**](MonetaryValue.md) | The confirmation amount | [readonly] 
**other_amount** | [**MonetaryValue**](MonetaryValue.md) | Any other charges associated with this rate | [readonly] 
**tax_amount** | [**MonetaryValue**](MonetaryValue.md) | Tariff and additional taxes associated with an international shipment. | [optional] [readonly] 
**zone** | **Integer** | Certain carriers base [their rates](https://blog.stamps.com/2017/09/08/usps-postal-zones/) off of custom zones that vary depending upon the ship_to and ship_from location  | [readonly] 
**package_type** | **String** | package type that this rate was estimated for | [readonly] 
**delivery_days** | **Integer** | The number of days estimated for delivery, this will show the _actual_ deliverty time if for example, the package gets shipped on a Friday  | [optional] [readonly] 
**guaranteed_service** | **Boolean** | Indicates if the rate is guaranteed. | [readonly] 
**estimated_delivery_date** | **DateTime** |  | [optional] [readonly] 
**carrier_delivery_days** | **String** | The carrier delivery days | [optional] [readonly] 
**ship_date** | **DateTime** | ship date | [optional] [readonly] 
**negotiated_rate** | **Boolean** | Indicates if the rates been negotiated | [readonly] 
**service_type** | **String** | service type | [readonly] 
**service_code** | **String** | service code for the rate | [readonly] 
**trackable** | **Boolean** | Indicates if rate is trackable | [readonly] 
**carrier_code** | **String** | carrier code | [readonly] 
**carrier_nickname** | **String** | carrier nickname | [readonly] 
**carrier_friendly_name** | **String** | carrier friendly name | [readonly] 
**validation_status** | [**ValidationStatus**](ValidationStatus.md) |  | [readonly] 
**warning_messages** | **Array&lt;String&gt;** | The warning messages | [readonly] 
**error_messages** | **Array&lt;String&gt;** | The error messages | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Rate.new(rate_id: null,
                                 rate_type: null,
                                 carrier_id: null,
                                 shipping_amount: null,
                                 insurance_amount: null,
                                 confirmation_amount: null,
                                 other_amount: null,
                                 tax_amount: null,
                                 zone: 6,
                                 package_type: package,
                                 delivery_days: 5,
                                 guaranteed_service: null,
                                 estimated_delivery_date: null,
                                 carrier_delivery_days: null,
                                 ship_date: null,
                                 negotiated_rate: null,
                                 service_type: null,
                                 service_code: null,
                                 trackable: null,
                                 carrier_code: null,
                                 carrier_nickname: null,
                                 carrier_friendly_name: null,
                                 validation_status: null,
                                 warning_messages: null,
                                 error_messages: null)
```


