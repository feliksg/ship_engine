# ShipEngine::AdvancedShipmentOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bill_to_account** | **String** | This field is used to [bill shipping costs to a third party](https://www.shipengine.com/docs/shipping/bill-to-third-party/). This field must be used in conjunction with the &#x60;bill_to_country_code&#x60;, &#x60;bill_to_party&#x60;, and &#x60;bill_to_postal_code&#x60; fields.  | [optional] [default to &#39;null&#39;]
**bill_to_country_code** | **String** | The two-letter [ISO 3166-1 country code](https://en.wikipedia.org/wiki/ISO_3166-1) of the third-party that is responsible for shipping costs.  | [optional] 
**bill_to_party** | [**BillToParty**](BillToParty.md) | Indicates whether to bill shipping costs to the recipient or to a third-party.  When billing to a third-party, the &#x60;bill_to_account&#x60;, &#x60;bill_to_country_code&#x60;, and &#x60;bill_to_postal_code&#x60; fields must also be set.  | [optional] 
**bill_to_postal_code** | **String** | The postal code of the third-party that is responsible for shipping costs.  | [optional] [default to &#39;null&#39;]
**contains_alcohol** | **Boolean** | Indicates that the shipment contains alcohol. | [optional] [default to false]
**delivered_duty_paid** | **Boolean** | Indicates that the shipper is paying the international delivery duties for this shipment.  This option is supported by UPS, FedEx, and DHL Express.  | [optional] [default to false]
**dry_ice** | **Boolean** | Indicates if the shipment contain dry ice | [optional] [default to false]
**dry_ice_weight** | [**Weight**](Weight.md) | The weight of the dry ice in the shipment | [optional] 
**non_machinable** | **Boolean** | Indicates that the package cannot be processed automatically because it is too large or irregularly shaped. This is primarily for USPS shipments.  See [Section 1.2 of the USPS parcel standards](https://pe.usps.com/text/dmm300/101.htm#ep1047495) for details.  | [optional] [default to false]
**saturday_delivery** | **Boolean** | Enables Saturday delivery, if supported by the carrier. | [optional] [default to false]
**use_ups_ground_freight_pricing** | **Boolean** | Whether to use [UPS Ground Freight pricing](https://www.shipengine.com/docs/shipping/ups-ground-freight/). If enabled, then a &#x60;freight_class&#x60; must also be specified.  | [optional] 
**freight_class** | **String** | The National Motor Freight Traffic Association [freight class](http://www.nmfta.org/pages/nmfc?AspxAutoDetectCookieSupport&#x3D;1), such as \&quot;77.5\&quot;, \&quot;110\&quot;, or \&quot;250\&quot;.  | [optional] [default to &#39;null&#39;]
**custom_field1** | **String** | An arbitrary field that can be used to store information about the shipment.  | [optional] [default to &#39;null&#39;]
**custom_field2** | **String** | An arbitrary field that can be used to store information about the shipment.  | [optional] [default to &#39;null&#39;]
**custom_field3** | **String** | An arbitrary field that can be used to store information about the shipment.  | [optional] [default to &#39;null&#39;]
**collect_on_delivery** | [**CollectOnDelivery**](CollectOnDelivery.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::AdvancedShipmentOptions.new(bill_to_account: null,
                                 bill_to_country_code: null,
                                 bill_to_party: null,
                                 bill_to_postal_code: null,
                                 contains_alcohol: null,
                                 delivered_duty_paid: null,
                                 dry_ice: null,
                                 dry_ice_weight: null,
                                 non_machinable: null,
                                 saturday_delivery: null,
                                 use_ups_ground_freight_pricing: null,
                                 freight_class: 77.5,
                                 custom_field1: null,
                                 custom_field2: null,
                                 custom_field3: null,
                                 collect_on_delivery: null)
```


