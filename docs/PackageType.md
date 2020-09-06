# ShipEngine::PackageType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**package_id** | **String** | A string that uniquely identifies the package. | [optional] 
**package_code** | **String** |  | 
**name** | **String** |  | 
**dimensions** | [**Dimensions**](Dimensions.md) | The custom dimensions for the package. | [optional] 
**description** | **String** | Provides a helpful description for the custom package. | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::PackageType.new(package_id: null,
                                 package_code: null,
                                 name: laptop_box,
                                 dimensions: null,
                                 description: Packaging for laptops)
```


