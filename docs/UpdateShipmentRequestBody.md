# ShipEngine::UpdateShipmentRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipment_id** | **String** | A string that uniquely identifies the shipment | [optional] [readonly] 
**carrier_id** | **String** | The carrier account that is billed for the shipping charges | [optional] 
**service_code** | **String** | The [carrier service](https://www.shipengine.com/docs/shipping/use-a-carrier-service/) used to ship the package, such as &#x60;fedex_ground&#x60;, &#x60;usps_first_class_mail&#x60;, &#x60;flat_rate_envelope&#x60;, etc.  | [optional] 
**external_order_id** | **String** | ID that the Order Source assigned | [optional] 
**items** | [**Array&lt;ShipmentItem&gt;**](ShipmentItem.md) | Describe the packages included in this shipment as related to potential metadata that was imported from external order sources  | [optional] 
**external_shipment_id** | **String** | You can optionally use this field to store your own identifier for this shipment.  &gt; **Warning:** The &#x60;external_shipment_id&#x60; is limited to 50 characters. Any additional characters will be truncated.  | [optional] 
**ship_date** | **DateTime** | The date that the shipment was (or will be) shippped.  ShipEngine will take the day of week into consideration. For example, if the carrier does not operate on Sundays, then a package that would have shipped on Sunday will ship on Monday instead.  | [optional] 
**created_at** | **DateTime** | The date and time that the shipment was created in ShipEngine. | [optional] [readonly] 
**modified_at** | **DateTime** | The date and time that the shipment was created or last modified. | [optional] [readonly] 
**shipment_status** | [**ShipmentStatus**](ShipmentStatus.md) | The current status of the shipment | [optional] [readonly] 
**ship_to** | [**Address**](Address.md) | The recipient&#39;s mailing address | 
**ship_from** | [**Address**](Address.md) | The shipment&#39;s origin address. If you frequently ship from the same location, consider [creating a warehouse](https://www.shipengine.com/docs/reference/create-warehouse/). Then you can simply specify the &#x60;warehouse_id&#x60; rather than the complete address each time.  | 
**warehouse_id** | **String** | The [warehouse](https://www.shipengine.com/docs/shipping/ship-from-a-warehouse/) that the shipment is being shipped from.  Either &#x60;warehouse_id&#x60; or &#x60;ship_from&#x60; must be specified.  | [optional] 
**return_to** | [**Address**](Address.md) | The return address for this shipment.  Defaults to the &#x60;ship_from&#x60; address.  | [optional] 
**confirmation** | [**DeliveryConfirmation**](DeliveryConfirmation.md) | The type of delivery confirmation that is required for this shipment. | [optional] 
**customs** | [**InternationalShipmentOptions**](InternationalShipmentOptions.md) | Customs information.  This is usually only needed for international shipments.  | [optional] 
**advanced_options** | [**AdvancedShipmentOptions**](AdvancedShipmentOptions.md) | Advanced shipment options.  These are entirely optional. | [optional] 
**insurance_provider** | [**InsuranceProvider**](InsuranceProvider.md) | The insurance provider to use for any insured packages in the shipment.  | [optional] 
**tags** | [**Array&lt;Tag&gt;**](Tag.md) | Arbitrary tags associated with this shipment.  Tags can be used to categorize shipments, and shipments can be queried by their tags.  | [optional] [readonly] 
**order_source_code** | [**OrderSourceName**](OrderSourceName.md) |  | [optional] 
**packages** | [**Array&lt;Package&gt;**](Package.md) | The packages in the shipment.  &gt; **Note:** Some carriers only allow one package per shipment.  If you attempt to create a multi-package shipment for a carrier that doesn&#39;t allow it, an error will be returned.  | [optional] 
**total_weight** | [**Weight**](Weight.md) | The combined weight of all packages in the shipment | [optional] [readonly] 
**validate_address** | [**ValidateAddress**](ValidateAddress.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::UpdateShipmentRequestBody.new(shipment_id: null,
                                 carrier_id: null,
                                 service_code: null,
                                 external_order_id: null,
                                 items: null,
                                 external_shipment_id: null,
                                 ship_date: null,
                                 created_at: null,
                                 modified_at: null,
                                 shipment_status: null,
                                 ship_to: null,
                                 ship_from: null,
                                 warehouse_id: null,
                                 return_to: null,
                                 confirmation: null,
                                 customs: null,
                                 advanced_options: null,
                                 insurance_provider: null,
                                 tags: null,
                                 order_source_code: null,
                                 packages: null,
                                 total_weight: null,
                                 validate_address: null)
```


