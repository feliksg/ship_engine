# ShipEngine::AddressesApi

All URIs are relative to *https://api.shipengine.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**parse_address**](AddressesApi.md#parse_address) | **PUT** /v1/addresses/recognize | Parse an address
[**validate_address**](AddressesApi.md#validate_address) | **POST** /v1/addresses/validate | Validate An Address



## parse_address

> ParseAddressResponseBody parse_address(parse_address_request_body)

Parse an address

The address-recognition API makes it easy for you to extract address data from unstructured text, including the recipient name, line 1, line 2, city, postal code, and more.  Data often enters your system as unstructured text (for example: emails, SMS messages, support tickets, or other documents). ShipEngine's address-recognition API helps you extract meaningful, structured data from this unstructured text. The parsed address data is returned in the same structure that's used for other ShipEngine APIs, such as address validation, rate quotes, and shipping labels.  > **Note:** Address recognition is currently supported for the United States, Canada, Australia, New Zealand, the United Kingdom, and Ireland. 

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

api_instance = ShipEngine::AddressesApi.new
parse_address_request_body = {"text":"Margie McMiller at 3800 North Lamar suite 200 in austin, tx.  The zip code there is 78652."} # ParseAddressRequestBody | The only required field is `text`, which is the text to be parsed. You can optionally also provide an `address` containing already-known values. For example, you may already know the recipient's name, city, and country, and only want to parse the street address into separate lines. 

begin
  #Parse an address
  result = api_instance.parse_address(parse_address_request_body)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling AddressesApi->parse_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parse_address_request_body** | [**ParseAddressRequestBody**](ParseAddressRequestBody.md)| The only required field is &#x60;text&#x60;, which is the text to be parsed. You can optionally also provide an &#x60;address&#x60; containing already-known values. For example, you may already know the recipient&#39;s name, city, and country, and only want to parse the street address into separate lines.  | 

### Return type

[**ParseAddressResponseBody**](ParseAddressResponseBody.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_address

> Array&lt;AddressValidationResult&gt; validate_address(address_to_validate)

Validate An Address

Address validation ensures accurate addresses and can lead to reduced shipping costs by preventing address correction surcharges. ShipEngine cross references multiple databases to validate addresses and identify potential deliverability issues. 

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

api_instance = ShipEngine::AddressesApi.new
address_to_validate = [{"name":"Mickey and Minnie Mouse","phone":"714-781-4565","company_name":"The Walt Disney Company","address_line1":"500 South Buena Vista Street","city_locality":"Burbank","state_province":"CA","postal_code":91521,"country_code":"US"}] # Array<AddressToValidate> | 

begin
  #Validate An Address
  result = api_instance.validate_address(address_to_validate)
  p result
rescue ShipEngine::ApiError => e
  puts "Exception when calling AddressesApi->validate_address: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_to_validate** | [**Array&lt;AddressToValidate&gt;**](AddressToValidate.md)|  | 

### Return type

[**Array&lt;AddressValidationResult&gt;**](AddressValidationResult.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

