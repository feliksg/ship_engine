# ShipEngine::ConnectRoyalMailRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Account number | 
**oba_email** | **String** | The oba email address | [optional] 
**contact_name** | **String** | Contact name | 
**email** | **String** | The email address | [optional] 
**company_name** | **String** | Company name | [optional] 
**street_line1** | **String** | Street line1 | [optional] 
**street_line2** | **String** | Street line2 | [optional] 
**street_line3** | **String** | Street line3 | [optional] 
**city** | **String** | City | 
**postal_code** | **String** | Postal code | 
**phone** | **String** | Phone | [optional] 
**nickname** | **String** | Nickname | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ConnectRoyalMailRequestBody.new(account_number: null,
                                 oba_email: null,
                                 contact_name: null,
                                 email: null,
                                 company_name: null,
                                 street_line1: null,
                                 street_line2: null,
                                 street_line3: null,
                                 city: null,
                                 postal_code: null,
                                 phone: null,
                                 nickname: null)
```


