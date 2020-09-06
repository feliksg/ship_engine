# ShipEngine::ParseAddressRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | The unstructured text that contains address-related entities | 
**address** | [**PartialAddress**](PartialAddress.md) | You can optionally provide any already-known address values. For example, you may already know the recipient&#39;s name, city, and country, and only want to parse the street address into separate lines.  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::ParseAddressRequestBody.new(text: Margie McMiller at 3800 North Lamar suite 200 in austin, tx.  The zip code there is 78652.,
                                 address: null)
```


