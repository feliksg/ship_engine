# ShipEngine::ListShipmentsResponseBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shipments** | [**Array&lt;Shipment&gt;**](Shipment.md) | The list of shipments returned by the api call | [readonly] 
**total** | **Integer** | Total number of shipments returned by the api call | [readonly] 
**page** | **Integer** |  | [readonly] 
**pages** | **Integer** |  | [readonly] 
**links** | [**PaginationLink**](PaginationLink.md) |  | [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ListShipmentsResponseBody.new(shipments: null,
                                 total: 1990,
                                 page: null,
                                 pages: null,
                                 links: null)
```


