# ShipEngine::Service

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carrier_id** | **String** | A string that uniquely identifies the carrier | [optional] [readonly] 
**carrier_code** | **String** |  | [optional] 
**service_code** | **String** | service code | [optional] [readonly] 
**name** | **String** | User friendly service name | [optional] [readonly] 
**domestic** | **Boolean** | Supports domestic shipping | [optional] [readonly] 
**international** | **Boolean** | Supports international shipping. | [optional] [readonly] 
**is_multi_package_supported** | **Boolean** | Carrier supports multiple packages per shipment | [optional] [readonly] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::Service.new(carrier_id: null,
                                 carrier_code: null,
                                 service_code: usps_media_mail,
                                 name: USPS First Class Mail,
                                 domestic: null,
                                 international: null,
                                 is_multi_package_supported: null)
```


