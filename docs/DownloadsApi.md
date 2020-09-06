# ShipEngine::DownloadsApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_file**](DownloadsApi.md#download_file) | **GET** /v1/downloads/{dir}/{subdir}/{filename} | Download File



## download_file

> File download_file(subdir, filename, dir, opts)

Download File

Get File

### Example

```ruby
# load the gem
require 'ship_engine'
# setup authorization
ShipEngine.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['API-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-Key'] = 'Bearer'
end

api_instance = ShipEngine::DownloadsApi.new
subdir = 'subdir_example' # String | 
filename = 'filename_example' # String | 
dir = 'dir_example' # String | 
opts = {
  download: 'download_example' # String | 
}

begin
  #Download File
  result = api_instance.download_file(subdir, filename, dir, opts)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling DownloadsApi->download_file: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subdir** | **String**|  | 
 **filename** | **String**|  | 
 **dir** | **String**|  | 
 **download** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/pdf, image/png, application/zpl, application/json

