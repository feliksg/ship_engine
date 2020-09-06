=begin
#ShipEngine API

#ShipEngine's easy-to-use REST API lets you manage all of your shipping needs without worrying about the complexities of different carrier APIs and protocols. We handle all the heavy lifting so you can focus on providing a first-class shipping experience for your customers at the best possible prices.  Each of ShipEngine's features can be used by itself or in conjunction with each other to build powerful shipping functionality into your application or service.  ## Getting Started If you're new to REST APIs then be sure to read our [introduction to REST](https://www.shipengine.com/docs/rest/) to understand the basics. Learn how to [authenticate yourself to ShipEngine](https://www.shipengine.com/docs/auth/), and then use our [sandbox environment](https://www.shipengine.com/docs/sandbox/) to kick the tires and get familiar with our API. If you run into any problems, then be sure to check the [error handling guide](https://www.shipengine.com/docs/errors/) for tips.  Here are some step-by-step **tutorials** to get you started:    - [Learn how to create your first shipping label](https://www.shipengine.com/docs/labels/create-a-label/)   - [Calculate shipping costs and compare rates across carriers](https://www.shipengine.com/docs/rates/)   - [Track packages on-demand or in real time](https://www.shipengine.com/docs/tracking/)   - [Validate mailing addresses anywhere on Earth](https://www.shipengine.com/docs/addresses/validation/)   ## Shipping Labels for Every Major Carrier ShipEngine makes it easy to [create shipping labels for any carrier](https://www.shipengine.com/docs/labels/create-a-label/) and [download them](https://www.shipengine.com/docs/labels/downloading/) in a [variety of file formats](https://www.shipengine.com/docs/labels/formats/). You can even customize labels with your own [messages](https://www.shipengine.com/docs/labels/messages/) and [images](https://www.shipengine.com/docs/labels/branding/).   ## Real-Time Package Tracking With ShipEngine you can [get the current status of a package](https://www.shipengine.com/docs/tracking/) or [subscribe to real-time tracking updates](https://www.shipengine.com/docs/tracking/webhooks/) via webhooks. You can also create [custimized tracking pages](https://www.shipengine.com/docs/tracking/branded-tracking-page/) with your own branding so your customers will always know where their package is.   ## Compare Shipping Costs Across Carriers Make sure you ship as cost-effectively as possible by [comparing rates across carriers](https://www.shipengine.com/docs/rates/get-shipment-rates/) using the ShipEngine Rates API. Or if you don't know the full shipment details yet, then you can [get rate estimates](https://www.shipengine.com/docs/rates/estimate/) with limited address info.   ## Worldwide Address Validation ShipEngine supports [address validation](https://www.shipengine.com/docs/addresses/validation/) for virtually [every country on Earth](https://www.shipengine.com/docs/addresses/validation/countries/), including the United States, Canada, Great Britain, Australia, Germany, France, Norway, Spain, Sweden, Israel, Italy, and over 160 others. 

The version of the OpenAPI document: 1.1.202006302006
Contact: sales@shipengine.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module ShipEngine
  class PackageTypesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Custom Package Type
    # Create a custom package type to better assist in getting accurate rate estimates
    # @param create_package_type_request_body [CreatePackageTypeRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [CreatePackageTypeResponseBody]
    def create_package_type(create_package_type_request_body, opts = {})
      data, _status_code, _headers = create_package_type_with_http_info(create_package_type_request_body, opts)
      data
    end

    # Create Custom Package Type
    # Create a custom package type to better assist in getting accurate rate estimates
    # @param create_package_type_request_body [CreatePackageTypeRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreatePackageTypeResponseBody, Integer, Hash)>] CreatePackageTypeResponseBody data, response status code and response headers
    def create_package_type_with_http_info(create_package_type_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PackageTypesApi.create_package_type ...'
      end
      # verify the required parameter 'create_package_type_request_body' is set
      if @api_client.config.client_side_validation && create_package_type_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'create_package_type_request_body' when calling PackageTypesApi.create_package_type"
      end
      # resource path
      local_var_path = '/v1/packages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(create_package_type_request_body) 

      # return_type
      return_type = opts[:return_type] || 'CreatePackageTypeResponseBody' 

      # auth_names
      auth_names = opts[:auth_names] || ['api_key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackageTypesApi#create_package_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete A Custom Package By ID
    # Delete a custom package using the ID
    # @param package_id [String] Package ID
    # @param [Hash] opts the optional parameters
    # @return [String]
    def delete_package_type(package_id, opts = {})
      data, _status_code, _headers = delete_package_type_with_http_info(package_id, opts)
      data
    end

    # Delete A Custom Package By ID
    # Delete a custom package using the ID
    # @param package_id [String] Package ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def delete_package_type_with_http_info(package_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PackageTypesApi.delete_package_type ...'
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling PackageTypesApi.delete_package_type"
      end
      if @api_client.config.client_side_validation && package_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "package_id" when calling PackageTypesApi.delete_package_type, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && package_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "package_id" when calling PackageTypesApi.delete_package_type, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && package_id !~ pattern
        fail ArgumentError, "invalid value for 'package_id' when calling PackageTypesApi.delete_package_type, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v1/packages/{package_id}'.sub('{' + 'package_id' + '}', CGI.escape(package_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'String' 

      # auth_names
      auth_names = opts[:auth_names] || ['api_key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackageTypesApi#delete_package_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Custom Package Type By ID
    # Get Custom Package Type by ID
    # @param package_id [String] Package ID
    # @param [Hash] opts the optional parameters
    # @return [GetPackageTypeByIdResponseBody]
    def get_package_type_by_id(package_id, opts = {})
      data, _status_code, _headers = get_package_type_by_id_with_http_info(package_id, opts)
      data
    end

    # Get Custom Package Type By ID
    # Get Custom Package Type by ID
    # @param package_id [String] Package ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetPackageTypeByIdResponseBody, Integer, Hash)>] GetPackageTypeByIdResponseBody data, response status code and response headers
    def get_package_type_by_id_with_http_info(package_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PackageTypesApi.get_package_type_by_id ...'
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling PackageTypesApi.get_package_type_by_id"
      end
      if @api_client.config.client_side_validation && package_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "package_id" when calling PackageTypesApi.get_package_type_by_id, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && package_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "package_id" when calling PackageTypesApi.get_package_type_by_id, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && package_id !~ pattern
        fail ArgumentError, "invalid value for 'package_id' when calling PackageTypesApi.get_package_type_by_id, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v1/packages/{package_id}'.sub('{' + 'package_id' + '}', CGI.escape(package_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'GetPackageTypeByIdResponseBody' 

      # auth_names
      auth_names = opts[:auth_names] || ['api_key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackageTypesApi#get_package_type_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Custom Package Types
    # List the custom package types associated with the account
    # @param [Hash] opts the optional parameters
    # @return [ListPackageTypesResponseBody]
    def list_package_types(opts = {})
      data, _status_code, _headers = list_package_types_with_http_info(opts)
      data
    end

    # List Custom Package Types
    # List the custom package types associated with the account
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListPackageTypesResponseBody, Integer, Hash)>] ListPackageTypesResponseBody data, response status code and response headers
    def list_package_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PackageTypesApi.list_package_types ...'
      end
      # resource path
      local_var_path = '/v1/packages'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ListPackageTypesResponseBody' 

      # auth_names
      auth_names = opts[:auth_names] || ['api_key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackageTypesApi#list_package_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Custom Package Type By ID
    # Update the custom package type object by ID
    # @param package_id [String] Package ID
    # @param update_package_type_request_body [UpdatePackageTypeRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def update_package_type(package_id, update_package_type_request_body, opts = {})
      data, _status_code, _headers = update_package_type_with_http_info(package_id, update_package_type_request_body, opts)
      data
    end

    # Update Custom Package Type By ID
    # Update the custom package type object by ID
    # @param package_id [String] Package ID
    # @param update_package_type_request_body [UpdatePackageTypeRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def update_package_type_with_http_info(package_id, update_package_type_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PackageTypesApi.update_package_type ...'
      end
      # verify the required parameter 'package_id' is set
      if @api_client.config.client_side_validation && package_id.nil?
        fail ArgumentError, "Missing the required parameter 'package_id' when calling PackageTypesApi.update_package_type"
      end
      if @api_client.config.client_side_validation && package_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "package_id" when calling PackageTypesApi.update_package_type, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && package_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "package_id" when calling PackageTypesApi.update_package_type, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && package_id !~ pattern
        fail ArgumentError, "invalid value for 'package_id' when calling PackageTypesApi.update_package_type, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'update_package_type_request_body' is set
      if @api_client.config.client_side_validation && update_package_type_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'update_package_type_request_body' when calling PackageTypesApi.update_package_type"
      end
      # resource path
      local_var_path = '/v1/packages/{package_id}'.sub('{' + 'package_id' + '}', CGI.escape(package_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(update_package_type_request_body) 

      # return_type
      return_type = opts[:return_type] || 'String' 

      # auth_names
      auth_names = opts[:auth_names] || ['api_key']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PackageTypesApi#update_package_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
