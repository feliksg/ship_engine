# ShipEngine::ShipmentItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | item name | [optional] 
**sales_order_id** | **String** | sales order id | [optional] 
**sales_order_item_id** | **String** | sales order item id | [optional] 
**quantity** | **Integer** | The quantity of this item included in the shipment | [optional] 
**sku** | **String** | Item Stock Keeping Unit | [optional] 
**external_order_id** | **String** | external order id | [optional] 
**external_order_item_id** | **String** | external order item id | [optional] 
**asin** | **String** | Amazon Standard Identification Number | [optional] 
**order_source_code** | [**OrderSourceName**](OrderSourceName.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ShipmentItem.new(name: null,
                                 sales_order_id: null,
                                 sales_order_item_id: null,
                                 quantity: null,
                                 sku: null,
                                 external_order_id: null,
                                 external_order_item_id: null,
                                 asin: B00005N5PF,
                                 order_source_code: null)
```


