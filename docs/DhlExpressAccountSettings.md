# ShipEngine::DhlExpressAccountSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nickname** | **String** | Account nickname | [optional] 
**should_hide_account_number_on_archive_doc** | **Boolean** | Indicates if the account number should be hidden on the archive documentation | [optional] 
**is_primary_account** | **Boolean** | Indicates if this is primary account | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::DhlExpressAccountSettings.new(nickname: null,
                                 should_hide_account_number_on_archive_doc: null,
                                 is_primary_account: null)
```


