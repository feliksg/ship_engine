# ShipEngine::CustomsItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customs_item_id** | **String** | A string that uniquely identifies the customs item | [readonly] 
**description** | **String** | A description of the item | [optional] [default to &#39;null&#39;]
**quantity** | **Integer** | The quantity of this item in the shipment. | [optional] [default to 0]
**value** | [**MonetaryValue**](MonetaryValue.md) | The total value of the customs item | [optional] 
**harmonized_tariff_code** | **String** | The [Harmonized Tariff Code](https://en.wikipedia.org/wiki/Harmonized_System) of this item. | [optional] [default to &#39;null&#39;]
**country_of_origin** | **String** | The two-letter [ISO 3166-1 country code](https://en.wikipedia.org/wiki/ISO_3166-1) where this item originated  | [optional] 
**unit_of_measure** | **String** |  | [optional] 
**sku** | **String** | The SKU (Stock Keeping Unit) of the customs item | [optional] 
**sku_description** | **String** | Description of the Custom Item&#39;s SKU | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CustomsItem.new(customs_item_id: null,
                                 description: null,
                                 quantity: null,
                                 value: null,
                                 harmonized_tariff_code: 3926.1,
                                 country_of_origin: null,
                                 unit_of_measure: null,
                                 sku: null,
                                 sku_description: null)
```


