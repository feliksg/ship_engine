# ShipEngine::ParseShipmentRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | The unstructured text that contains shipping-related entities | 
**shipment** | [**PartialShipment**](PartialShipment.md) | You can optionally provide a &#x60;shipment&#x60; object containing any already-known values. For example, you probably already know the &#x60;ship_from&#x60; address, and you may also already know what carrier and service you want to use.  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ParseShipmentRequestBody.new(text: I have a 4oz package that&#39;s 5x10x14in, and I need to ship it to Margie McMiller at 3800 North Lamar suite 200 in austin, tx 78652. Please send it via USPS first class and require an adult signature. It also needs to be insured for $400.
,
                                 shipment: null)
```


