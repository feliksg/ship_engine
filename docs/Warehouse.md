# ShipEngine::Warehouse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**warehouse_id** | **String** | A string that uniquely identifies the warehouse | [optional] [readonly] 
**name** | **String** | Name of the warehouse | [optional] 
**created_at** | **DateTime** | Timestamp that indicates when the warehouse was created | [optional] [readonly] 
**origin_address** | [**Address**](Address.md) | The origin address of the warehouse | [optional] 
**return_address** | [**Address**](Address.md) | The return address associated with the warehouse | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Warehouse.new(warehouse_id: null,
                                 name: Zero Cool HQ,
                                 created_at: 2019-06-25T18:12:35.583Z,
                                 origin_address: null,
                                 return_address: null)
```


