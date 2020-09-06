# ShipEngine::ConnectUpsRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nickname** | **String** | Nickname | 
**account_number** | **String** | Account number | 
**account_country_code** | **String** | Account country code | 
**account_postal_code** | **String** | Account postal code | 
**title** | **String** | Title | [optional] 
**first_name** | **String** | First name | 
**last_name** | **String** | Last name | 
**company** | **String** | Company | 
**address1** | **String** | Address Line 1 | 
**address2** | **String** | Address Line 2 | [optional] 
**city** | **String** | City | 
**state** | **String** | State | 
**postal_code** | **String** | Postal code | 
**country_code** | **String** | Country code | 
**email** | **String** | The email address | 
**phone** | **String** | Phone | 
**invoice** | [**UpsInvoice**](UpsInvoice.md) | The UPS invoice | [optional] 
**agree_to_technology_agreement** | **Boolean** | The Agreement to the [UPS Technology Agreement](https://www.ups.com/assets/resources/media/UTA_with_EUR.pdf) | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ConnectUpsRequestBody.new(nickname: null,
                                 account_number: null,
                                 account_country_code: null,
                                 account_postal_code: null,
                                 title: null,
                                 first_name: null,
                                 last_name: null,
                                 company: null,
                                 address1: null,
                                 address2: null,
                                 city: null,
                                 state: null,
                                 postal_code: null,
                                 country_code: null,
                                 email: null,
                                 phone: null,
                                 invoice: null,
                                 agree_to_technology_agreement: null)
```


