# ShipEngine::ConnectFedexUkRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Account number | 
**address1** | **String** | Address | 
**address2** | **String** | Address | [optional] 
**city** | **String** | The city | 
**company** | **String** | The company | [optional] 
**country_code** | **String** | Country code | 
**email** | **String** | The email address | 
**first_name** | **String** | First name | 
**last_name** | **String** | Last name | 
**phone** | **String** | Phone number | 
**postal_code** | **String** | Postal Code | 
**state** | **String** | State | 
**nickname** | **String** | Nickname | 
**agree_to_eula** | **Boolean** | Boolean signaling agreement to the Fedex End User License Agreement | 
**meter_number** | **String** | Meter number | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ConnectFedexUkRequestBody.new(account_number: null,
                                 address1: null,
                                 address2: null,
                                 city: null,
                                 company: null,
                                 country_code: null,
                                 email: null,
                                 first_name: null,
                                 last_name: null,
                                 phone: null,
                                 postal_code: null,
                                 state: null,
                                 nickname: null,
                                 agree_to_eula: null,
                                 meter_number: null)
```


