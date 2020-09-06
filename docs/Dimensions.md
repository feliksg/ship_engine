# ShipEngine::Dimensions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**unit** | [**DimensionUnit**](DimensionUnit.md) |  | 
**length** | **Float** | The length of the package, in the specified unit | [default to 0]
**width** | **Float** | The width of the package, in the specified unit | [default to 0]
**height** | **Float** | The length of the package, in the specified unit | [default to 0]

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Dimensions.new(unit: null,
                                 length: null,
                                 width: null,
                                 height: null)
```


