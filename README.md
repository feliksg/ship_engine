# ship_engine

ShipEngine - the Ruby gem for the ShipEngine API

ShipEngine's easy-to-use REST API lets you manage all of your shipping needs without worrying about the complexities of different carrier APIs and protocols. We handle all the heavy lifting so you can focus on providing a first-class shipping experience for your customers at the best possible prices.

Each of ShipEngine's features can be used by itself or in conjunction with each other to build powerful shipping functionality into your application or service.

## Getting Started
If you're new to REST APIs then be sure to read our [introduction to REST](https://www.shipengine.com/docs/rest/) to understand the basics. Learn how to [authenticate yourself to ShipEngine](https://www.shipengine.com/docs/auth/), and then use our [sandbox environment](https://www.shipengine.com/docs/sandbox/) to kick the tires and get familiar with our API. If you run into any problems, then be sure to check the [error handling guide](https://www.shipengine.com/docs/errors/) for tips.

Here are some step-by-step **tutorials** to get you started:

  - [Learn how to create your first shipping label](https://www.shipengine.com/docs/labels/create-a-label/)
  - [Calculate shipping costs and compare rates across carriers](https://www.shipengine.com/docs/rates/)
  - [Track packages on-demand or in real time](https://www.shipengine.com/docs/tracking/)
  - [Validate mailing addresses anywhere on Earth](https://www.shipengine.com/docs/addresses/validation/)


## Shipping Labels for Every Major Carrier
ShipEngine makes it easy to [create shipping labels for any carrier](https://www.shipengine.com/docs/labels/create-a-label/) and [download them](https://www.shipengine.com/docs/labels/downloading/) in a [variety of file formats](https://www.shipengine.com/docs/labels/formats/). You can even customize labels with your own [messages](https://www.shipengine.com/docs/labels/messages/) and [images](https://www.shipengine.com/docs/labels/branding/).


## Real-Time Package Tracking
With ShipEngine you can [get the current status of a package](https://www.shipengine.com/docs/tracking/) or [subscribe to real-time tracking updates](https://www.shipengine.com/docs/tracking/webhooks/) via webhooks. You can also create [custimized tracking pages](https://www.shipengine.com/docs/tracking/branded-tracking-page/) with your own branding so your customers will always know where their package is.


## Compare Shipping Costs Across Carriers
Make sure you ship as cost-effectively as possible by [comparing rates across carriers](https://www.shipengine.com/docs/rates/get-shipment-rates/) using the ShipEngine Rates API. Or if you don't know the full shipment details yet, then you can [get rate estimates](https://www.shipengine.com/docs/rates/estimate/) with limited address info.


## Worldwide Address Validation
ShipEngine supports [address validation](https://www.shipengine.com/docs/addresses/validation/) for virtually [every country on Earth](https://www.shipengine.com/docs/addresses/validation/countries/), including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and over 160 others.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.1.202006302006
- Package version: 1.0.3
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.shipengine.com/contact/](https://www.shipengine.com/contact/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build ship_engine.gemspec
```

Then either install the gem locally:

```shell
gem install ./ship_engine-1.0.3.gem
```

(for development, run `gem install --dev ./ship_engine-1.0.3.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'ship_engine', '~> 1.0.3'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'ship_engine', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'ship_engine'

# Setup authorization
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

## Documentation for API Endpoints

All URIs are relative to *https://api.shipengine.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ShipEngine::AddressesApi* | [**parse_address**](docs/AddressesApi.md#parse_address) | **PUT** /v1/addresses/recognize | Parse an address
*ShipEngine::AddressesApi* | [**validate_address**](docs/AddressesApi.md#validate_address) | **POST** /v1/addresses/validate | Validate An Address
*ShipEngine::BatchesApi* | [**add_to_batch**](docs/BatchesApi.md#add_to_batch) | **POST** /v1/batches/{batch_id}/add | Add to a Batch
*ShipEngine::BatchesApi* | [**create_batch**](docs/BatchesApi.md#create_batch) | **POST** /v1/batches | Create A Batch
*ShipEngine::BatchesApi* | [**delete_batch**](docs/BatchesApi.md#delete_batch) | **DELETE** /v1/batches/{batch_id} | Delete Batch By Id
*ShipEngine::BatchesApi* | [**get_batch_by_external_id**](docs/BatchesApi.md#get_batch_by_external_id) | **GET** /v1/batches/external_batch_id/{external_batch_id} | Get Batch By External ID
*ShipEngine::BatchesApi* | [**get_batch_by_id**](docs/BatchesApi.md#get_batch_by_id) | **GET** /v1/batches/{batch_id} | Get Batch By ID
*ShipEngine::BatchesApi* | [**list_batch_errors**](docs/BatchesApi.md#list_batch_errors) | **GET** /v1/batches/{batch_id}/errors | Get Batch Errors
*ShipEngine::BatchesApi* | [**list_batches**](docs/BatchesApi.md#list_batches) | **GET** /v1/batches | List Batches
*ShipEngine::BatchesApi* | [**process_batch**](docs/BatchesApi.md#process_batch) | **POST** /v1/batches/{batch_id}/process/labels | Process Batch ID Labels
*ShipEngine::BatchesApi* | [**remove_from_batch**](docs/BatchesApi.md#remove_from_batch) | **POST** /v1/batches/{batch_id}/remove | Remove From Batch
*ShipEngine::BatchesApi* | [**update_batch**](docs/BatchesApi.md#update_batch) | **PUT** /v1/batches/{batch_id} | Update Batch By Id
*ShipEngine::CarrierAccountsApi* | [**connect_carrier**](docs/CarrierAccountsApi.md#connect_carrier) | **POST** /v1/connections/carriers/{carrier_name} | Connect a carrier account
*ShipEngine::CarrierAccountsApi* | [**disconnect_carrier**](docs/CarrierAccountsApi.md#disconnect_carrier) | **DELETE** /v1/connections/carriers/{carrier_name}/{carrier_id} | Disconnect a carrier
*ShipEngine::CarrierAccountsApi* | [**get_carrier_settings**](docs/CarrierAccountsApi.md#get_carrier_settings) | **GET** /v1/connections/carriers/{carrier_name}/{carrier_id}/settings | Get carrier settings
*ShipEngine::CarrierAccountsApi* | [**update_carrier_settings**](docs/CarrierAccountsApi.md#update_carrier_settings) | **PUT** /v1/connections/carriers/{carrier_name}/{carrier_id}/settings | Update carrier settings
*ShipEngine::CarriersApi* | [**add_funds_to_carrier**](docs/CarriersApi.md#add_funds_to_carrier) | **PUT** /v1/carriers/{carrier_id}/add_funds | Add Funds To Carrier
*ShipEngine::CarriersApi* | [**get_carrier_by_id**](docs/CarriersApi.md#get_carrier_by_id) | **GET** /v1/carriers/{carrier_id} | Get Carrier By ID
*ShipEngine::CarriersApi* | [**get_carrier_options**](docs/CarriersApi.md#get_carrier_options) | **GET** /v1/carriers/{carrier_id}/options | Get Carrier Options
*ShipEngine::CarriersApi* | [**list_carrier_package_types**](docs/CarriersApi.md#list_carrier_package_types) | **GET** /v1/carriers/{carrier_id}/packages | List Carrier Package Types
*ShipEngine::CarriersApi* | [**list_carrier_services**](docs/CarriersApi.md#list_carrier_services) | **GET** /v1/carriers/{carrier_id}/services | List Carrier Services
*ShipEngine::CarriersApi* | [**list_carriers**](docs/CarriersApi.md#list_carriers) | **GET** /v1/carriers | List Carriers
*ShipEngine::DownloadsApi* | [**download_file**](docs/DownloadsApi.md#download_file) | **GET** /v1/downloads/{dir}/{subdir}/{filename} | Download File
*ShipEngine::InsuranceApi* | [**add_funds_to_insurance**](docs/InsuranceApi.md#add_funds_to_insurance) | **PATCH** /v1/insurance/shipsurance/add_funds | Add Funds To Insurance
*ShipEngine::InsuranceApi* | [**connect_insurer**](docs/InsuranceApi.md#connect_insurer) | **POST** /v1/connections/insurance/shipsurance | Connect a Shipsurance Account
*ShipEngine::InsuranceApi* | [**disconnect_insurer**](docs/InsuranceApi.md#disconnect_insurer) | **DELETE** /v1/connections/insurance/shipsurance | Disconnect a Shipsurance Account
*ShipEngine::InsuranceApi* | [**get_insurance_balance**](docs/InsuranceApi.md#get_insurance_balance) | **GET** /v1/insurance/shipsurance/balance | Get Insurance Funds Balance
*ShipEngine::LabelsApi* | [**create_label**](docs/LabelsApi.md#create_label) | **POST** /v1/labels | Purchase Label
*ShipEngine::LabelsApi* | [**create_label_from_rate**](docs/LabelsApi.md#create_label_from_rate) | **POST** /v1/labels/rates/{rate_id} | Purchase Label with Rate ID
*ShipEngine::LabelsApi* | [**create_label_from_shipment**](docs/LabelsApi.md#create_label_from_shipment) | **POST** /v1/labels/shipment/{shipment_id} | Purchase Label with Shipment ID
*ShipEngine::LabelsApi* | [**create_return_label**](docs/LabelsApi.md#create_return_label) | **POST** /v1/labels/{label_id}/return | Create a return label
*ShipEngine::LabelsApi* | [**get_label_by_external_shipment_id**](docs/LabelsApi.md#get_label_by_external_shipment_id) | **GET** /v1/labels/external_shipment_id/{external_shipment_id} | Get Label By External Shipment ID
*ShipEngine::LabelsApi* | [**get_label_by_id**](docs/LabelsApi.md#get_label_by_id) | **GET** /v1/labels/{label_id} | Get Label By ID
*ShipEngine::LabelsApi* | [**get_tracking_log_from_label**](docs/LabelsApi.md#get_tracking_log_from_label) | **GET** /v1/labels/{label_id}/track | Get Label Tracking Information
*ShipEngine::LabelsApi* | [**list_labels**](docs/LabelsApi.md#list_labels) | **GET** /v1/labels | List labels
*ShipEngine::LabelsApi* | [**void_label**](docs/LabelsApi.md#void_label) | **PUT** /v1/labels/{label_id}/void | Void a Label By ID
*ShipEngine::ManifestsApi* | [**create_manifest**](docs/ManifestsApi.md#create_manifest) | **POST** /v1/manifests | Create Manifest
*ShipEngine::ManifestsApi* | [**get_manifest_by_id**](docs/ManifestsApi.md#get_manifest_by_id) | **GET** /v1/manifests/{manifest_id} | Get Manifest By Id
*ShipEngine::ManifestsApi* | [**list_manifests**](docs/ManifestsApi.md#list_manifests) | **GET** /v1/manifests | List Manifests
*ShipEngine::PackageTypesApi* | [**create_package_type**](docs/PackageTypesApi.md#create_package_type) | **POST** /v1/packages | Create Custom Package Type
*ShipEngine::PackageTypesApi* | [**delete_package_type**](docs/PackageTypesApi.md#delete_package_type) | **DELETE** /v1/packages/{package_id} | Delete A Custom Package By ID
*ShipEngine::PackageTypesApi* | [**get_package_type_by_id**](docs/PackageTypesApi.md#get_package_type_by_id) | **GET** /v1/packages/{package_id} | Get Custom Package Type By ID
*ShipEngine::PackageTypesApi* | [**list_package_types**](docs/PackageTypesApi.md#list_package_types) | **GET** /v1/packages | List Custom Package Types
*ShipEngine::PackageTypesApi* | [**update_package_type**](docs/PackageTypesApi.md#update_package_type) | **PUT** /v1/packages/{package_id} | Update Custom Package Type By ID
*ShipEngine::RatesApi* | [**calculate_rates**](docs/RatesApi.md#calculate_rates) | **POST** /v1/rates | Get Shipping Rates
*ShipEngine::RatesApi* | [**compare_bulk_rates**](docs/RatesApi.md#compare_bulk_rates) | **POST** /v1/rates/bulk | Get Bulk Rates
*ShipEngine::RatesApi* | [**estimate_rates**](docs/RatesApi.md#estimate_rates) | **POST** /v1/rates/estimate | Estimate Rates
*ShipEngine::RatesApi* | [**get_rate_by_id**](docs/RatesApi.md#get_rate_by_id) | **GET** /v1/rates/{rate_id} | Get Rate By ID
*ShipEngine::ShipmentsApi* | [**cancel_shipments**](docs/ShipmentsApi.md#cancel_shipments) | **PUT** /v1/shipments/{shipment_id}/cancel | Cancel a Shipment
*ShipEngine::ShipmentsApi* | [**create_shipments**](docs/ShipmentsApi.md#create_shipments) | **POST** /v1/shipments | Create Shipments
*ShipEngine::ShipmentsApi* | [**get_shipment_by_external_id**](docs/ShipmentsApi.md#get_shipment_by_external_id) | **GET** /v1/shipments/external_shipment_id/{external_shipment_id} | Get Shipment By External ID
*ShipEngine::ShipmentsApi* | [**get_shipment_by_id**](docs/ShipmentsApi.md#get_shipment_by_id) | **GET** /v1/shipments/{shipment_id} | Get Shipment By ID
*ShipEngine::ShipmentsApi* | [**list_shipment_errors**](docs/ShipmentsApi.md#list_shipment_errors) | **GET** /v1/shipments/{shipment_id}/errors | Get Shipment Errors
*ShipEngine::ShipmentsApi* | [**list_shipment_rates**](docs/ShipmentsApi.md#list_shipment_rates) | **GET** /v1/shipments/{shipment_id}/rates | Get Shipment Rates
*ShipEngine::ShipmentsApi* | [**list_shipments**](docs/ShipmentsApi.md#list_shipments) | **GET** /v1/shipments | List Shipments
*ShipEngine::ShipmentsApi* | [**parse_shipment**](docs/ShipmentsApi.md#parse_shipment) | **PUT** /v1/shipments/recognize | Parse shipping info
*ShipEngine::ShipmentsApi* | [**tag_shipment**](docs/ShipmentsApi.md#tag_shipment) | **POST** /v1/shipments/{shipment_id}/tags/{tag_name} | Add Tag to Shipment
*ShipEngine::ShipmentsApi* | [**untag_shipment**](docs/ShipmentsApi.md#untag_shipment) | **DELETE** /v1/shipments/{shipment_id}/tags/{tag_name} | Remove Tag from Shipment
*ShipEngine::ShipmentsApi* | [**update_shipment**](docs/ShipmentsApi.md#update_shipment) | **PUT** /v1/shipments/{shipment_id} | Update Shipment By ID
*ShipEngine::TagsApi* | [**create_tag**](docs/TagsApi.md#create_tag) | **POST** /v1/tags/{tag_name} | Create a New Tag
*ShipEngine::TagsApi* | [**delete_tag**](docs/TagsApi.md#delete_tag) | **DELETE** /v1/tags/{tag_name} | Delete Tag
*ShipEngine::TagsApi* | [**list_tags**](docs/TagsApi.md#list_tags) | **GET** /v1/tags | Get Tags
*ShipEngine::TagsApi* | [**rename_tag**](docs/TagsApi.md#rename_tag) | **PUT** /v1/tags/{tag_name}/{new_tag_name} | Update Tag Name
*ShipEngine::TrackingApi* | [**get_tracking_log**](docs/TrackingApi.md#get_tracking_log) | **GET** /v1/tracking | Get Tracking Information
*ShipEngine::TrackingApi* | [**start_tracking**](docs/TrackingApi.md#start_tracking) | **POST** /v1/tracking/start | Start Tracking a Package
*ShipEngine::TrackingApi* | [**stop_tracking**](docs/TrackingApi.md#stop_tracking) | **POST** /v1/tracking/stop | Stop Tracking a Package
*ShipEngine::WarehousesApi* | [**create_warehouse**](docs/WarehousesApi.md#create_warehouse) | **POST** /v1/warehouses | Create Warehouse
*ShipEngine::WarehousesApi* | [**delete_warehouse**](docs/WarehousesApi.md#delete_warehouse) | **DELETE** /v1/warehouses/{warehouse_id} | Delete Warehouse By ID
*ShipEngine::WarehousesApi* | [**get_warehouse_by_id**](docs/WarehousesApi.md#get_warehouse_by_id) | **GET** /v1/warehouses/{warehouse_id} | Get Warehouse By Id
*ShipEngine::WarehousesApi* | [**list_warehouses**](docs/WarehousesApi.md#list_warehouses) | **GET** /v1/warehouses | List Warehouses
*ShipEngine::WarehousesApi* | [**update_warehouse**](docs/WarehousesApi.md#update_warehouse) | **PUT** /v1/warehouses/{warehouse_id} | Update WareHouse By Id
*ShipEngine::WebhooksApi* | [**create_webhook**](docs/WebhooksApi.md#create_webhook) | **POST** /v1/environment/webhooks | Create a Webhook
*ShipEngine::WebhooksApi* | [**delete_webhook**](docs/WebhooksApi.md#delete_webhook) | **DELETE** /v1/environment/webhooks/{webhook_id} | Delete Webhook By ID
*ShipEngine::WebhooksApi* | [**get_webhook_by_id**](docs/WebhooksApi.md#get_webhook_by_id) | **GET** /v1/environment/webhooks/{webhook_id} | Get Webhook By ID
*ShipEngine::WebhooksApi* | [**list_webhooks**](docs/WebhooksApi.md#list_webhooks) | **GET** /v1/environment/webhooks | List Webhooks
*ShipEngine::WebhooksApi* | [**update_webhook**](docs/WebhooksApi.md#update_webhook) | **PUT** /v1/environment/webhooks/{webhook_id} | Update a Webhook


## Documentation for Models

 - [ShipEngine::AddFundsToCarrierRequestBody](docs/AddFundsToCarrierRequestBody.md)
 - [ShipEngine::AddFundsToCarrierResponseBody](docs/AddFundsToCarrierResponseBody.md)
 - [ShipEngine::AddFundsToInsuranceRequestBody](docs/AddFundsToInsuranceRequestBody.md)
 - [ShipEngine::AddFundsToInsuranceResponseBody](docs/AddFundsToInsuranceResponseBody.md)
 - [ShipEngine::AddToBatchRequestBody](docs/AddToBatchRequestBody.md)
 - [ShipEngine::Address](docs/Address.md)
 - [ShipEngine::AddressResidentialIndicator](docs/AddressResidentialIndicator.md)
 - [ShipEngine::AddressToValidate](docs/AddressToValidate.md)
 - [ShipEngine::AddressValidatingShipment](docs/AddressValidatingShipment.md)
 - [ShipEngine::AddressValidationCode](docs/AddressValidationCode.md)
 - [ShipEngine::AddressValidationDetailCode](docs/AddressValidationDetailCode.md)
 - [ShipEngine::AddressValidationMessageType](docs/AddressValidationMessageType.md)
 - [ShipEngine::AddressValidationResult](docs/AddressValidationResult.md)
 - [ShipEngine::AddressValidationStatus](docs/AddressValidationStatus.md)
 - [ShipEngine::AdvancedShipmentOptions](docs/AdvancedShipmentOptions.md)
 - [ShipEngine::AncillaryServiceEndorsement](docs/AncillaryServiceEndorsement.md)
 - [ShipEngine::Batch](docs/Batch.md)
 - [ShipEngine::BatchResponseError](docs/BatchResponseError.md)
 - [ShipEngine::BatchStatus](docs/BatchStatus.md)
 - [ShipEngine::BatchesSortBy](docs/BatchesSortBy.md)
 - [ShipEngine::BillToParty](docs/BillToParty.md)
 - [ShipEngine::BulkRate](docs/BulkRate.md)
 - [ShipEngine::CalculateRatesRequestBody](docs/CalculateRatesRequestBody.md)
 - [ShipEngine::CalculateRatesResponseBody](docs/CalculateRatesResponseBody.md)
 - [ShipEngine::Carrier](docs/Carrier.md)
 - [ShipEngine::CarrierAdvancedOption](docs/CarrierAdvancedOption.md)
 - [ShipEngine::CarrierName](docs/CarrierName.md)
 - [ShipEngine::CarrierNameWithSettings](docs/CarrierNameWithSettings.md)
 - [ShipEngine::CollectOnDelivery](docs/CollectOnDelivery.md)
 - [ShipEngine::CollectOnDeliveryPaymentType](docs/CollectOnDeliveryPaymentType.md)
 - [ShipEngine::CompareBulkRatesRequestBody](docs/CompareBulkRatesRequestBody.md)
 - [ShipEngine::ConnectAccessWorldwideRequestBody](docs/ConnectAccessWorldwideRequestBody.md)
 - [ShipEngine::ConnectAmazonBuyShippingRequestBody](docs/ConnectAmazonBuyShippingRequestBody.md)
 - [ShipEngine::ConnectApcRequestBody](docs/ConnectApcRequestBody.md)
 - [ShipEngine::ConnectAsendiaRequestBody](docs/ConnectAsendiaRequestBody.md)
 - [ShipEngine::ConnectAustraliaPostRequestBody](docs/ConnectAustraliaPostRequestBody.md)
 - [ShipEngine::ConnectCanadaPostRequestBody](docs/ConnectCanadaPostRequestBody.md)
 - [ShipEngine::ConnectCarrierRequestBody](docs/ConnectCarrierRequestBody.md)
 - [ShipEngine::ConnectCarrierResponseBody](docs/ConnectCarrierResponseBody.md)
 - [ShipEngine::ConnectDhlEcommerceRequestBody](docs/ConnectDhlEcommerceRequestBody.md)
 - [ShipEngine::ConnectDhlExpressAuRequestBody](docs/ConnectDhlExpressAuRequestBody.md)
 - [ShipEngine::ConnectDhlExpressCaRequestBody](docs/ConnectDhlExpressCaRequestBody.md)
 - [ShipEngine::ConnectDhlExpressRequestBody](docs/ConnectDhlExpressRequestBody.md)
 - [ShipEngine::ConnectDhlExpressUkRequestBody](docs/ConnectDhlExpressUkRequestBody.md)
 - [ShipEngine::ConnectDpdRequestBody](docs/ConnectDpdRequestBody.md)
 - [ShipEngine::ConnectEndiciaRequestBody](docs/ConnectEndiciaRequestBody.md)
 - [ShipEngine::ConnectFedexRequestBody](docs/ConnectFedexRequestBody.md)
 - [ShipEngine::ConnectFedexUkRequestBody](docs/ConnectFedexUkRequestBody.md)
 - [ShipEngine::ConnectFirstmileRequestBody](docs/ConnectFirstmileRequestBody.md)
 - [ShipEngine::ConnectGlobegisticsRequestBody](docs/ConnectGlobegisticsRequestBody.md)
 - [ShipEngine::ConnectImexRequestBody](docs/ConnectImexRequestBody.md)
 - [ShipEngine::ConnectInsurerRequestBody](docs/ConnectInsurerRequestBody.md)
 - [ShipEngine::ConnectNewgisticsRequestBody](docs/ConnectNewgisticsRequestBody.md)
 - [ShipEngine::ConnectOntracRequestBody](docs/ConnectOntracRequestBody.md)
 - [ShipEngine::ConnectPurolatorRequestBody](docs/ConnectPurolatorRequestBody.md)
 - [ShipEngine::ConnectRoyalMailRequestBody](docs/ConnectRoyalMailRequestBody.md)
 - [ShipEngine::ConnectRrDonnelleyRequestBody](docs/ConnectRrDonnelleyRequestBody.md)
 - [ShipEngine::ConnectSekoRequestBody](docs/ConnectSekoRequestBody.md)
 - [ShipEngine::ConnectSendleRequestBody](docs/ConnectSendleRequestBody.md)
 - [ShipEngine::ConnectStampsRequestBody](docs/ConnectStampsRequestBody.md)
 - [ShipEngine::ConnectUpsRequestBody](docs/ConnectUpsRequestBody.md)
 - [ShipEngine::CreateAndValidateShipment](docs/CreateAndValidateShipment.md)
 - [ShipEngine::CreateBatchRequestBody](docs/CreateBatchRequestBody.md)
 - [ShipEngine::CreateBatchResponseBody](docs/CreateBatchResponseBody.md)
 - [ShipEngine::CreateLabelFromRateRequestBody](docs/CreateLabelFromRateRequestBody.md)
 - [ShipEngine::CreateLabelFromRateResponseBody](docs/CreateLabelFromRateResponseBody.md)
 - [ShipEngine::CreateLabelFromShipmentRequestBody](docs/CreateLabelFromShipmentRequestBody.md)
 - [ShipEngine::CreateLabelFromShipmentResponseBody](docs/CreateLabelFromShipmentResponseBody.md)
 - [ShipEngine::CreateLabelRequestBody](docs/CreateLabelRequestBody.md)
 - [ShipEngine::CreateLabelResponseBody](docs/CreateLabelResponseBody.md)
 - [ShipEngine::CreateManifestByObjectRequestBody](docs/CreateManifestByObjectRequestBody.md)
 - [ShipEngine::CreateManifestLabelIdsRequestBody](docs/CreateManifestLabelIdsRequestBody.md)
 - [ShipEngine::CreateManifestRequestBody](docs/CreateManifestRequestBody.md)
 - [ShipEngine::CreateManifestResponseBody](docs/CreateManifestResponseBody.md)
 - [ShipEngine::CreatePackageTypeRequestBody](docs/CreatePackageTypeRequestBody.md)
 - [ShipEngine::CreatePackageTypeResponseBody](docs/CreatePackageTypeResponseBody.md)
 - [ShipEngine::CreateReturnLabelRequestBody](docs/CreateReturnLabelRequestBody.md)
 - [ShipEngine::CreateReturnLabelResponseBody](docs/CreateReturnLabelResponseBody.md)
 - [ShipEngine::CreateShipmentResponseBodyFields](docs/CreateShipmentResponseBodyFields.md)
 - [ShipEngine::CreateShipmentsRequestBody](docs/CreateShipmentsRequestBody.md)
 - [ShipEngine::CreateShipmentsResponseBody](docs/CreateShipmentsResponseBody.md)
 - [ShipEngine::CreateTagResponseBody](docs/CreateTagResponseBody.md)
 - [ShipEngine::CreateWarehouseRequestBody](docs/CreateWarehouseRequestBody.md)
 - [ShipEngine::CreateWarehouseResponseBody](docs/CreateWarehouseResponseBody.md)
 - [ShipEngine::CreateWebhookRequestBody](docs/CreateWebhookRequestBody.md)
 - [ShipEngine::CreateWebhookResponseBody](docs/CreateWebhookResponseBody.md)
 - [ShipEngine::Currency](docs/Currency.md)
 - [ShipEngine::CustomsItem](docs/CustomsItem.md)
 - [ShipEngine::DeliveryConfirmation](docs/DeliveryConfirmation.md)
 - [ShipEngine::DeprecatedManifest](docs/DeprecatedManifest.md)
 - [ShipEngine::DhlExpressAccountSettings](docs/DhlExpressAccountSettings.md)
 - [ShipEngine::DhlExpressSettingsResponseBody](docs/DhlExpressSettingsResponseBody.md)
 - [ShipEngine::DimensionUnit](docs/DimensionUnit.md)
 - [ShipEngine::Dimensions](docs/Dimensions.md)
 - [ShipEngine::Error](docs/Error.md)
 - [ShipEngine::ErrorCode](docs/ErrorCode.md)
 - [ShipEngine::ErrorResponseBody](docs/ErrorResponseBody.md)
 - [ShipEngine::ErrorSource](docs/ErrorSource.md)
 - [ShipEngine::ErrorType](docs/ErrorType.md)
 - [ShipEngine::EstimateRatesRequestBody](docs/EstimateRatesRequestBody.md)
 - [ShipEngine::FedexAccountSettings](docs/FedexAccountSettings.md)
 - [ShipEngine::FedexAccountSettingsRequestBody](docs/FedexAccountSettingsRequestBody.md)
 - [ShipEngine::FedexPickupType](docs/FedexPickupType.md)
 - [ShipEngine::FedexSettingsResponseBody](docs/FedexSettingsResponseBody.md)
 - [ShipEngine::GetBatchByExternalIdResponseBody](docs/GetBatchByExternalIdResponseBody.md)
 - [ShipEngine::GetBatchByIdResponseBody](docs/GetBatchByIdResponseBody.md)
 - [ShipEngine::GetCarrierByIdResponseBody](docs/GetCarrierByIdResponseBody.md)
 - [ShipEngine::GetCarrierOptionsResponseBody](docs/GetCarrierOptionsResponseBody.md)
 - [ShipEngine::GetCarrierSettingsResponseBody](docs/GetCarrierSettingsResponseBody.md)
 - [ShipEngine::GetCarriersResponseBody](docs/GetCarriersResponseBody.md)
 - [ShipEngine::GetInsuranceBalanceResponseBody](docs/GetInsuranceBalanceResponseBody.md)
 - [ShipEngine::GetLabelByExternalShipmentIdResponseBody](docs/GetLabelByExternalShipmentIdResponseBody.md)
 - [ShipEngine::GetLabelByIdResponseBody](docs/GetLabelByIdResponseBody.md)
 - [ShipEngine::GetManifestByIdResponseBody](docs/GetManifestByIdResponseBody.md)
 - [ShipEngine::GetPackageTypeByIdResponseBody](docs/GetPackageTypeByIdResponseBody.md)
 - [ShipEngine::GetRateByIdResponseBody](docs/GetRateByIdResponseBody.md)
 - [ShipEngine::GetShipmentByExternalIdResponseBody](docs/GetShipmentByExternalIdResponseBody.md)
 - [ShipEngine::GetShipmentByIdResponseBody](docs/GetShipmentByIdResponseBody.md)
 - [ShipEngine::GetTrackingLogFromLabelResponseBody](docs/GetTrackingLogFromLabelResponseBody.md)
 - [ShipEngine::GetTrackingLogResponseBody](docs/GetTrackingLogResponseBody.md)
 - [ShipEngine::GetWarehouseByIdResponseBody](docs/GetWarehouseByIdResponseBody.md)
 - [ShipEngine::GetWebhookByIdResponseBody](docs/GetWebhookByIdResponseBody.md)
 - [ShipEngine::InsuranceProvider](docs/InsuranceProvider.md)
 - [ShipEngine::InternationalShipmentOptions](docs/InternationalShipmentOptions.md)
 - [ShipEngine::Label](docs/Label.md)
 - [ShipEngine::LabelChargeEvent](docs/LabelChargeEvent.md)
 - [ShipEngine::LabelDownload](docs/LabelDownload.md)
 - [ShipEngine::LabelDownloadType](docs/LabelDownloadType.md)
 - [ShipEngine::LabelFormat](docs/LabelFormat.md)
 - [ShipEngine::LabelLayout](docs/LabelLayout.md)
 - [ShipEngine::LabelMessages](docs/LabelMessages.md)
 - [ShipEngine::LabelStatus](docs/LabelStatus.md)
 - [ShipEngine::Link](docs/Link.md)
 - [ShipEngine::ListBatchErrorsResponseBody](docs/ListBatchErrorsResponseBody.md)
 - [ShipEngine::ListBatchesResponseBody](docs/ListBatchesResponseBody.md)
 - [ShipEngine::ListCarrierPackageTypesResponseBody](docs/ListCarrierPackageTypesResponseBody.md)
 - [ShipEngine::ListCarrierServicesResponseBody](docs/ListCarrierServicesResponseBody.md)
 - [ShipEngine::ListCarriersResponseBody](docs/ListCarriersResponseBody.md)
 - [ShipEngine::ListLabelsResponseBody](docs/ListLabelsResponseBody.md)
 - [ShipEngine::ListManifestsResponseBody](docs/ListManifestsResponseBody.md)
 - [ShipEngine::ListPackageTypesResponseBody](docs/ListPackageTypesResponseBody.md)
 - [ShipEngine::ListShipmentErrorsResponseBody](docs/ListShipmentErrorsResponseBody.md)
 - [ShipEngine::ListShipmentRatesResponseBody](docs/ListShipmentRatesResponseBody.md)
 - [ShipEngine::ListShipmentsResponseBody](docs/ListShipmentsResponseBody.md)
 - [ShipEngine::ListTagsResponseBody](docs/ListTagsResponseBody.md)
 - [ShipEngine::ListWarehousesResponseBody](docs/ListWarehousesResponseBody.md)
 - [ShipEngine::Manifest](docs/Manifest.md)
 - [ShipEngine::ManifestDownload](docs/ManifestDownload.md)
 - [ShipEngine::Manifests](docs/Manifests.md)
 - [ShipEngine::ModifyBatch](docs/ModifyBatch.md)
 - [ShipEngine::MonetaryValue](docs/MonetaryValue.md)
 - [ShipEngine::NonDelivery](docs/NonDelivery.md)
 - [ShipEngine::OptionalLink](docs/OptionalLink.md)
 - [ShipEngine::OrderSourceName](docs/OrderSourceName.md)
 - [ShipEngine::Package](docs/Package.md)
 - [ShipEngine::PackageContents](docs/PackageContents.md)
 - [ShipEngine::PackageType](docs/PackageType.md)
 - [ShipEngine::PagedListResponseBody](docs/PagedListResponseBody.md)
 - [ShipEngine::PaginationLink](docs/PaginationLink.md)
 - [ShipEngine::ParseAddressRequestBody](docs/ParseAddressRequestBody.md)
 - [ShipEngine::ParseAddressResponseBody](docs/ParseAddressResponseBody.md)
 - [ShipEngine::ParseShipmentRequestBody](docs/ParseShipmentRequestBody.md)
 - [ShipEngine::ParseShipmentResponseBody](docs/ParseShipmentResponseBody.md)
 - [ShipEngine::PartialAddress](docs/PartialAddress.md)
 - [ShipEngine::PartialShipment](docs/PartialShipment.md)
 - [ShipEngine::PaymentAmount](docs/PaymentAmount.md)
 - [ShipEngine::ProcessBatchRequestBody](docs/ProcessBatchRequestBody.md)
 - [ShipEngine::PurchaseLabelWithoutShipment](docs/PurchaseLabelWithoutShipment.md)
 - [ShipEngine::Rate](docs/Rate.md)
 - [ShipEngine::RateEstimateByCarrierId](docs/RateEstimateByCarrierId.md)
 - [ShipEngine::RateEstimateByCarrierIds](docs/RateEstimateByCarrierIds.md)
 - [ShipEngine::RateEstimateOptions](docs/RateEstimateOptions.md)
 - [ShipEngine::RateRequestBody](docs/RateRequestBody.md)
 - [ShipEngine::RateRequestByShipmentIds](docs/RateRequestByShipmentIds.md)
 - [ShipEngine::RateRequestByShipments](docs/RateRequestByShipments.md)
 - [ShipEngine::RateRequestOptions](docs/RateRequestOptions.md)
 - [ShipEngine::RateRequestRateOptions](docs/RateRequestRateOptions.md)
 - [ShipEngine::RateResponse](docs/RateResponse.md)
 - [ShipEngine::RateResponseStatus](docs/RateResponseStatus.md)
 - [ShipEngine::RateType](docs/RateType.md)
 - [ShipEngine::RatesInformation](docs/RatesInformation.md)
 - [ShipEngine::RecognizedEntity](docs/RecognizedEntity.md)
 - [ShipEngine::RemoveFromBatchRequestBody](docs/RemoveFromBatchRequestBody.md)
 - [ShipEngine::ResponseMessage](docs/ResponseMessage.md)
 - [ShipEngine::Service](docs/Service.md)
 - [ShipEngine::Shipment](docs/Shipment.md)
 - [ShipEngine::ShipmentIdRequest](docs/ShipmentIdRequest.md)
 - [ShipEngine::ShipmentItem](docs/ShipmentItem.md)
 - [ShipEngine::ShipmentRequest](docs/ShipmentRequest.md)
 - [ShipEngine::ShipmentResponseError](docs/ShipmentResponseError.md)
 - [ShipEngine::ShipmentStatus](docs/ShipmentStatus.md)
 - [ShipEngine::ShipmentsSortBy](docs/ShipmentsSortBy.md)
 - [ShipEngine::SmartPostHub](docs/SmartPostHub.md)
 - [ShipEngine::SortDir](docs/SortDir.md)
 - [ShipEngine::Tag](docs/Tag.md)
 - [ShipEngine::TagShipmentResponseBody](docs/TagShipmentResponseBody.md)
 - [ShipEngine::TrackEvent](docs/TrackEvent.md)
 - [ShipEngine::TrackingInformation](docs/TrackingInformation.md)
 - [ShipEngine::TrackingStatus](docs/TrackingStatus.md)
 - [ShipEngine::UpdateAmazonBuyShippingRequestBody](docs/UpdateAmazonBuyShippingRequestBody.md)
 - [ShipEngine::UpdateCarrierSettingsRequestBody](docs/UpdateCarrierSettingsRequestBody.md)
 - [ShipEngine::UpdateDhlExpressSettingsRequestBody](docs/UpdateDhlExpressSettingsRequestBody.md)
 - [ShipEngine::UpdateFedexSettingsRequestBody](docs/UpdateFedexSettingsRequestBody.md)
 - [ShipEngine::UpdateNewgisticsSettingsRequestBody](docs/UpdateNewgisticsSettingsRequestBody.md)
 - [ShipEngine::UpdatePackageTypeRequestBody](docs/UpdatePackageTypeRequestBody.md)
 - [ShipEngine::UpdateShipmentFields](docs/UpdateShipmentFields.md)
 - [ShipEngine::UpdateShipmentRequestBody](docs/UpdateShipmentRequestBody.md)
 - [ShipEngine::UpdateShipmentResponseBody](docs/UpdateShipmentResponseBody.md)
 - [ShipEngine::UpdateUpsSettingsRequestBody](docs/UpdateUpsSettingsRequestBody.md)
 - [ShipEngine::UpdateWarehouseRequestBody](docs/UpdateWarehouseRequestBody.md)
 - [ShipEngine::UpdateWebhookRequestBody](docs/UpdateWebhookRequestBody.md)
 - [ShipEngine::UpsAccountSettings](docs/UpsAccountSettings.md)
 - [ShipEngine::UpsInvoice](docs/UpsInvoice.md)
 - [ShipEngine::UpsPickupType](docs/UpsPickupType.md)
 - [ShipEngine::UpsSettingsResponseBody](docs/UpsSettingsResponseBody.md)
 - [ShipEngine::ValidateAddress](docs/ValidateAddress.md)
 - [ShipEngine::ValidateShipmentFields](docs/ValidateShipmentFields.md)
 - [ShipEngine::ValidationStatus](docs/ValidationStatus.md)
 - [ShipEngine::VoidLabelResponseBody](docs/VoidLabelResponseBody.md)
 - [ShipEngine::Warehouse](docs/Warehouse.md)
 - [ShipEngine::Webhook](docs/Webhook.md)
 - [ShipEngine::WebhookEvent](docs/WebhookEvent.md)
 - [ShipEngine::Weight](docs/Weight.md)
 - [ShipEngine::WeightUnit](docs/WeightUnit.md)


## Documentation for Authorization


### api_key


- **Type**: API key
- **API key parameter name**: API-Key
- **Location**: HTTP header

