# ShipEngine::RateEstimateOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_country_code** | **String** |  | [optional] 
**from_postal_code** | **String** |  | [optional] 
**from_city_locality** | **String** | from postal code | [optional] 
**from_state_province** | **String** | From state province | [optional] 
**to_country_code** | **String** |  | [optional] 
**to_postal_code** | **String** |  | [optional] 
**to_city_locality** | **String** | The city locality the package is being shipped to | [optional] 
**to_state_province** | **String** | To state province | [optional] 
**weight** | [**Weight**](Weight.md) | The weight of the package | [optional] 
**dimensions** | [**Dimensions**](Dimensions.md) | The dimensions of the package | [optional] 
**confirmation** | [**DeliveryConfirmation**](DeliveryConfirmation.md) |  | [optional] 
**address_residential_indicator** | [**AddressResidentialIndicator**](AddressResidentialIndicator.md) |  | [optional] 
**ship_date** | **DateTime** | ship date | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::RateEstimateOptions.new(from_country_code: null,
                                 from_postal_code: null,
                                 from_city_locality: Austin,
                                 from_state_province: Austin,
                                 to_country_code: null,
                                 to_postal_code: null,
                                 to_city_locality: Austin,
                                 to_state_province: Houston,
                                 weight: null,
                                 dimensions: null,
                                 confirmation: null,
                                 address_residential_indicator: null,
                                 ship_date: null)
```


