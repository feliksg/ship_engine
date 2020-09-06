# ShipEngine::TrackEvent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**occurred_at** | **DateTime** | Timestamp for carrier event | 
**carrier_occurred_at** | **DateTime** | Carrier timestamp for the event, it is assumed to be the local time of where the event occurred. | [optional] 
**description** | **String** | Event description | [optional] [readonly] 
**city_locality** | **String** | City locality | [readonly] 
**state_province** | **String** | State province | [readonly] 
**postal_code** | **String** | Postal code | [readonly] 
**country_code** | **String** |  | [optional] 
**company_name** | **String** | Company Name | [optional] [readonly] 
**signer** | **String** | Signer information | [optional] [readonly] 
**event_code** | **String** | Event Code | [optional] 
**latitude** | **Float** | Latitude coordinate of tracking event. | [optional] 
**longitude** | **Float** | Longitude coordinate of tracking event. | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::TrackEvent.new(occurred_at: null,
                                 carrier_occurred_at: null,
                                 description: Delivered, In/At Mailbox,
                                 city_locality: AUSTIN,
                                 state_province: TX,
                                 postal_code: 78756,
                                 country_code: null,
                                 company_name: Stamps.com,
                                 signer: null,
                                 event_code: null,
                                 latitude: null,
                                 longitude: null)
```


