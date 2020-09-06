# ShipEngine::ConnectDhlEcommerceRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nickname** | **String** | A nickname to help you identify this account | 
**client_id** | **String** | The client id | 
**username** | **String** | The account username | 
**password** | **String** | The account password | 
**pickup_number** | **String** | The pickup number | 
**distribution_center** | **String** | The distribution center | 
**api_key** | **String** | The DHL E-Commerce API key. This field is optional, but if not set you will not be able to get rates for this account.  | [optional] 
**api_secret** | **String** | The DHL E-Commerce API secret. This field is optional, but if not set you will not be able to get rates for this account.  | [optional] 
**ancillary_endorsement** | [**AncillaryServiceEndorsement**](AncillaryServiceEndorsement.md) |  | [optional] 
**account_number** | **String** | Account number | [optional] 
**ftp_username** | **String** | FTP username | [optional] 
**ftp_password** | **String** | FTP password | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ConnectDhlEcommerceRequestBody.new(nickname: null,
                                 client_id: null,
                                 username: null,
                                 password: null,
                                 pickup_number: null,
                                 distribution_center: null,
                                 api_key: null,
                                 api_secret: null,
                                 ancillary_endorsement: null,
                                 account_number: null,
                                 ftp_username: null,
                                 ftp_password: null)
```


