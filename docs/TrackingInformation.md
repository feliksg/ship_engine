# ShipEngine::TrackingInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tracking_number** | **String** |  | [optional] 
**status_code** | **String** | Status code | [optional] [readonly] 
**status_description** | **String** | Status description | [optional] [readonly] 
**carrier_status_code** | **String** | Carrier status code | [optional] [readonly] 
**carrier_status_description** | **String** | carrier status description | [optional] [readonly] 
**ship_date** | **DateTime** |  | [optional] 
**estimated_delivery_date** | **DateTime** |  | [optional] 
**actual_delivery_date** | **DateTime** |  | [optional] 
**exception_description** | **String** | Exception description | [optional] [readonly] 
**events** | [**Array&lt;TrackEvent&gt;**](TrackEvent.md) | The events that have occured during the lifetime of this tracking number. | [optional] [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::TrackingInformation.new(tracking_number: null,
                                 status_code: DE,
                                 status_description: Delivered,
                                 carrier_status_code: 1,
                                 carrier_status_description: Your item was delivered in or at the mailbox at 9:10 am on March,
                                 ship_date: null,
                                 estimated_delivery_date: null,
                                 actual_delivery_date: null,
                                 exception_description: null,
                                 events: null)
```


