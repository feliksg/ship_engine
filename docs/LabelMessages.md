# ShipEngine::LabelMessages

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference1** | **String** | The first line of the custom label message.  Some carriers may prefix this line with something like \&quot;REF\&quot;, \&quot;Reference\&quot;, \&quot;Trx Ref No.\&quot;, etc.  | [default to &#39;null&#39;]
**reference2** | **String** | The second line of the custom label message.  Some carriers may prefix this line with something like \&quot;INV\&quot;, \&quot;Reference 2\&quot;, \&quot;Trx Ref No.\&quot;, etc.  | [default to &#39;null&#39;]
**reference3** | **String** | The third line of the custom label message.  Some carriers may prefix this line with something like \&quot;PO\&quot;, \&quot;Reference 3\&quot;, etc.  | [default to &#39;null&#39;]

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::LabelMessages.new(reference1: null,
                                 reference2: null,
                                 reference3: null)
```


