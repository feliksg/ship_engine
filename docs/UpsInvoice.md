# ShipEngine::UpsInvoice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_date** | **DateTime** | invoice date | [optional] 
**invoice_number** | **String** | invoice number | [optional] 
**control_id** | **String** | A string that uniquely identifies the control | [optional] 
**invoice_amount** | **Float** |  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::UpsInvoice.new(invoice_date: null,
                                 invoice_number: null,
                                 control_id: null,
                                 invoice_amount: null)
```


