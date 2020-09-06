# ShipEngine::RateRequestBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_ids** | **Array&lt;String&gt;** | Array of carrier ids to get rates for | 
**package_types** | **Array&lt;String&gt;** |  | [optional] 
**service_codes** | **Array&lt;String&gt;** |  | [optional] 
**calculate_tax_amount** | **Boolean** | Calculate the duties and tariffs for cross border shipments. | [optional] 
**preferred_currency** | [**Currency**](Currency.md) |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::RateRequestBody.new(carrier_ids: null,
                                 package_types: null,
                                 service_codes: null,
                                 calculate_tax_amount: null,
                                 preferred_currency: null)
```


