# ShipEngine::RecognizedEntity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The Entity type (e.g. \&quot;weight\&quot;, \&quot;person\&quot;, \&quot;address_line1\&quot;, etc.) | 
**score** | **Float** | A confidence score between zero and one that indicates how certain the API is that it correctly recognized this entity  | 
**text** | **String** | The substring from the original text that was recognized as this entity | 
**start_index** | **Integer** | The index of the first character of this entity within the original text | 
**end_index** | **Integer** | The index of the last character of this entity within the original text | 
**result** | **Hash&lt;String, Object&gt;** | The normalized value of the entity.  Most entity results have a &#x60;value&#x60; field, which is the normalized value of the entity.  For example, if the substring \&quot;john doe\&quot; was recognized as a \&quot;person\&quot; entity, then the value might be normalized to have proper capitalization (e.g. \&quot;John Doe\&quot;).  Or if the substring \&quot;ft worth\&quot; was recognized as a \&quot;city\&quot; entity, then the value might be normalized to \&quot;Fort Worth\&quot;.  Some entities have other information in addition to, or instead of a &#x60;value&#x60;.  For example, a \&quot;dimensions\&quot; entity will have separate fields for &#x60;length&#x60;, &#x60;width&#x60;, &#x60;height&#x60;, and &#x60;unit&#x60;.  | [optional] 

## Code Sample

```ruby
require 'ShipEngine'

instance = ShipEngine::RecognizedEntity.new(type: null,
                                 score: null,
                                 text: null,
                                 start_index: null,
                                 end_index: null,
                                 result: null)
```


