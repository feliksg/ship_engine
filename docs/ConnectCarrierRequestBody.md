# ShipEngine::ConnectCarrierRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nickname** | **String** | Nickname | 
**username** | **String** | Username | 
**password** | **String** | Password | 
**merchant_seller_id** | **String** |  | 
**mws_auth_token** | **String** |  | 
**email** | **String** | The email address | 
**account_number** | **String** | Account number | 
**ftp_username** | **String** | FTP username | 
**ftp_password** | **String** | FTP password | 
**api_key** | **String** | API key | 
**api_secret** | **String** | The DHL E-Commerce API secret. This field is optional, but if not set you will not be able to get rates for this account.  | 
**contract_id** | **String** | Canada Post Account Contract ID | 
**client_id** | **String** | The client id | 
**pickup_number** | **String** | The pickup number | 
**distribution_center** | **String** | The distribution center | 
**ancillary_endorsement** | [**AncillaryServiceEndorsement**](AncillaryServiceEndorsement.md) |  | [optional] 
**site_id** | **String** | A string that uniquely identifies the site | 
**account** | **String** | Account | 
**passphrase** | **String** | Passphrase | 
**address1** | **String** | Address Line 1 | 
**address2** | **String** | Address Line 2 | [optional] 
**city** | **String** | City | 
**company** | **String** | Company | 
**country_code** | **String** | Country code | 
**first_name** | **String** | First name | 
**last_name** | **String** | Last name | 
**phone** | **String** | Phone | 
**postal_code** | **String** | Postal code | 
**state** | **String** | State | 
**agree_to_eula** | **Boolean** | Boolean signaling agreement to the Fedex End User License Agreement | 
**meter_number** | **String** | Meter number | [optional] 
**mailer_id** | **Integer** | Mailer id | 
**profile_name** | **String** | Profile name | [optional] 
**merchant_id** | **Integer** | Merchant id | [optional] 
**induction_site** | **String** | Induction site | 
**activation_key** | **String** | Activation key | 
**oba_email** | **String** | The oba email address | [optional] 
**contact_name** | **String** | Contact name | 
**company_name** | **String** | Company name | [optional] 
**street_line1** | **String** | Street line1 | [optional] 
**street_line2** | **String** | Street line2 | [optional] 
**street_line3** | **String** | Street line3 | [optional] 
**access_key** | **String** | Seko Account Access Key | 
**sendle_id** | **String** | A string that uniquely identifies the sendle | 
**account_country_code** | **String** | Account country code | 
**account_postal_code** | **String** | Account postal code | 
**title** | **String** | Title | [optional] 
**invoice** | [**UpsInvoice**](UpsInvoice.md) | The UPS invoice | [optional] 
**agree_to_technology_agreement** | **Boolean** | The Agreement to the [UPS Technology Agreement](https://www.ups.com/assets/resources/media/UTA_with_EUR.pdf) | 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ConnectCarrierRequestBody.new(nickname: null,
                                 username: null,
                                 password: null,
                                 merchant_seller_id: null,
                                 mws_auth_token: null,
                                 email: null,
                                 account_number: null,
                                 ftp_username: null,
                                 ftp_password: null,
                                 api_key: null,
                                 api_secret: null,
                                 contract_id: null,
                                 client_id: null,
                                 pickup_number: null,
                                 distribution_center: null,
                                 ancillary_endorsement: null,
                                 site_id: null,
                                 account: null,
                                 passphrase: null,
                                 address1: null,
                                 address2: null,
                                 city: null,
                                 company: null,
                                 country_code: null,
                                 first_name: null,
                                 last_name: null,
                                 phone: null,
                                 postal_code: null,
                                 state: null,
                                 agree_to_eula: null,
                                 meter_number: null,
                                 mailer_id: null,
                                 profile_name: null,
                                 merchant_id: null,
                                 induction_site: null,
                                 activation_key: null,
                                 oba_email: null,
                                 contact_name: null,
                                 company_name: null,
                                 street_line1: null,
                                 street_line2: null,
                                 street_line3: null,
                                 access_key: null,
                                 sendle_id: null,
                                 account_country_code: null,
                                 account_postal_code: null,
                                 title: null,
                                 invoice: null,
                                 agree_to_technology_agreement: null)
```


