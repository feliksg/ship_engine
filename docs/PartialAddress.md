# ShipEngine::PartialAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of a contact person at this address.  This field may be set instead of - or in addition to - the &#x60;company_name&#x60; field.  | [optional] 
**phone** | **String** | The phone number of a contact person at this address.  The format of this phone number varies depending on the country.  | [optional] 
**company_name** | **String** | If this is a business address, then the company name should be specified here.  | [optional] 
**address_line1** | **String** | The first line of the street address.  For some addresses, this may be the only line.  Other addresses may require 2 or 3 lines.  | [optional] 
**address_line2** | **String** | The second line of the street address.  For some addresses, this line may not be needed.  | [optional] 
**address_line3** | **String** | The third line of the street address.  For some addresses, this line may not be needed.  | [optional] 
**city_locality** | **String** | The name of the city or locality | [optional] 
**state_province** | **String** | The state or province.  For some countries (including the U.S.) only abbreviations are allowed.  Other countries allow the full name or abbreviation.  | [optional] 
**postal_code** | **String** |  | [optional] 
**country_code** | **String** | The two-letter [ISO 3166-1 country code](https://en.wikipedia.org/wiki/ISO_3166-1)  | [optional] 
**address_residential_indicator** | [**AddressResidentialIndicator**](AddressResidentialIndicator.md) | Indicates whether this is a residential address. | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::PartialAddress.new(name: John Doe,
                                 phone: +1 204-253-9411 ext. 123,
                                 company_name: The Home Depot,
                                 address_line1: 1999 Bishop Grandin Blvd.,
                                 address_line2: Unit 408,
                                 address_line3: Building #7,
                                 city_locality: Winnipeg,
                                 state_province: Manitoba,
                                 postal_code: null,
                                 country_code: null,
                                 address_residential_indicator: no)
```


