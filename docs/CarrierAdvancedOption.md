# ShipEngine::CarrierAdvancedOption

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of advanced option | [optional] [readonly] 
**default_value** | **String** | Default value of option | [optional] [readonly] 
**description** | **String** | Description of option | [optional] [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::CarrierAdvancedOption.new(name: contains_alcohol,
                                 default_value: false,
                                 description: null)
```


