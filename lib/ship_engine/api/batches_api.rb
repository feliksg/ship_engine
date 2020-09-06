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
  class BatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add to a Batch
    # Add a Shipment or Rate to a Batch
    # @param batch_id [String] Batch ID
    # @param add_to_batch_request_body [AddToBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def add_to_batch(batch_id, add_to_batch_request_body, opts = {})
      data, _status_code, _headers = add_to_batch_with_http_info(batch_id, add_to_batch_request_body, opts)
      data
    end

    # Add to a Batch
    # Add a Shipment or Rate to a Batch
    # @param batch_id [String] Batch ID
    # @param add_to_batch_request_body [AddToBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def add_to_batch_with_http_info(batch_id, add_to_batch_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.add_to_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.add_to_batch"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.add_to_batch, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.add_to_batch, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.add_to_batch, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'add_to_batch_request_body' is set
      if @api_client.config.client_side_validation && add_to_batch_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'add_to_batch_request_body' when calling BatchesApi.add_to_batch"
      end
      # resource path
      local_var_path = '/v1/batches/{batch_id}/add'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(add_to_batch_request_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchesApi#add_to_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create A Batch
    # Create a Batch
    # @param create_batch_request_body [CreateBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [CreateBatchResponseBody]
    def create_batch(create_batch_request_body, opts = {})
      data, _status_code, _headers = create_batch_with_http_info(create_batch_request_body, opts)
      data
    end

    # Create A Batch
    # Create a Batch
    # @param create_batch_request_body [CreateBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateBatchResponseBody, Integer, Hash)>] CreateBatchResponseBody data, response status code and response headers
    def create_batch_with_http_info(create_batch_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.create_batch ...'
      end
      # verify the required parameter 'create_batch_request_body' is set
      if @api_client.config.client_side_validation && create_batch_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'create_batch_request_body' when calling BatchesApi.create_batch"
      end
      # resource path
      local_var_path = '/v1/batches'

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
      post_body = opts[:body] || @api_client.object_to_http_body(create_batch_request_body) 

      # return_type
      return_type = opts[:return_type] || 'CreateBatchResponseBody' 

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
        @api_client.config.logger.debug "API called: BatchesApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Batch By Id
    # Delete Batch By Id
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @return [String]
    def delete_batch(batch_id, opts = {})
      data, _status_code, _headers = delete_batch_with_http_info(batch_id, opts)
      data
    end

    # Delete Batch By Id
    # Delete Batch By Id
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def delete_batch_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.delete_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.delete_batch"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.delete_batch, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.delete_batch, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.delete_batch, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v1/batches/{batch_id}'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

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
        @api_client.config.logger.debug "API called: BatchesApi#delete_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Batch By External ID
    # Get Batch By External ID
    # @param external_batch_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [GetBatchByExternalIdResponseBody]
    def get_batch_by_external_id(external_batch_id, opts = {})
      data, _status_code, _headers = get_batch_by_external_id_with_http_info(external_batch_id, opts)
      data
    end

    # Get Batch By External ID
    # Get Batch By External ID
    # @param external_batch_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetBatchByExternalIdResponseBody, Integer, Hash)>] GetBatchByExternalIdResponseBody data, response status code and response headers
    def get_batch_by_external_id_with_http_info(external_batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.get_batch_by_external_id ...'
      end
      # verify the required parameter 'external_batch_id' is set
      if @api_client.config.client_side_validation && external_batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'external_batch_id' when calling BatchesApi.get_batch_by_external_id"
      end
      # resource path
      local_var_path = '/v1/batches/external_batch_id/{external_batch_id}'.sub('{' + 'external_batch_id' + '}', CGI.escape(external_batch_id.to_s))

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
      return_type = opts[:return_type] || 'GetBatchByExternalIdResponseBody' 

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
        @api_client.config.logger.debug "API called: BatchesApi#get_batch_by_external_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Batch By ID
    # Get Batch By ID
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @return [GetBatchByIdResponseBody]
    def get_batch_by_id(batch_id, opts = {})
      data, _status_code, _headers = get_batch_by_id_with_http_info(batch_id, opts)
      data
    end

    # Get Batch By ID
    # Get Batch By ID
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetBatchByIdResponseBody, Integer, Hash)>] GetBatchByIdResponseBody data, response status code and response headers
    def get_batch_by_id_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.get_batch_by_id ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.get_batch_by_id"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.get_batch_by_id, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.get_batch_by_id, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.get_batch_by_id, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v1/batches/{batch_id}'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

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
      return_type = opts[:return_type] || 'GetBatchByIdResponseBody' 

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
        @api_client.config.logger.debug "API called: BatchesApi#get_batch_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Batch Errors
    # Error handling in batches are handled differently than in a single synchronous request. You must retrieve the status of your batch by [getting a batch](https://www.shipengine.com/docs/reference/get-batch-by-id/) and getting an overview of the statuses or you can list errors directly here below to get detailed information about the errors. 
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  (default to 1)
    # @option opts [Integer] :pagesize 
    # @return [ListBatchErrorsResponseBody]
    def list_batch_errors(batch_id, opts = {})
      data, _status_code, _headers = list_batch_errors_with_http_info(batch_id, opts)
      data
    end

    # Get Batch Errors
    # Error handling in batches are handled differently than in a single synchronous request. You must retrieve the status of your batch by [getting a batch](https://www.shipengine.com/docs/reference/get-batch-by-id/) and getting an overview of the statuses or you can list errors directly here below to get detailed information about the errors. 
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned. 
    # @option opts [Integer] :pagesize 
    # @return [Array<(ListBatchErrorsResponseBody, Integer, Hash)>] ListBatchErrorsResponseBody data, response status code and response headers
    def list_batch_errors_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.list_batch_errors ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.list_batch_errors"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.list_batch_errors, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.list_batch_errors, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.list_batch_errors, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling BatchesApi.list_batch_errors, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'pagesize'].nil? && opts[:'pagesize'] < 1
        fail ArgumentError, 'invalid value for "opts[:"pagesize"]" when calling BatchesApi.list_batch_errors, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/batches/{batch_id}/errors'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pagesize'] = opts[:'pagesize'] if !opts[:'pagesize'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ListBatchErrorsResponseBody' 

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
        @api_client.config.logger.debug "API called: BatchesApi#list_batch_errors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Batches
    # List Batches associated with your Shipengine account
    # @param [Hash] opts the optional parameters
    # @option opts [BatchStatus] :status 
    # @option opts [Integer] :page Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned.  (default to 1)
    # @option opts [Integer] :page_size The number of results to return per response. (default to 25)
    # @option opts [SortDir] :sort_dir Controls the sort order of the query.
    # @option opts [BatchesSortBy] :sort_by 
    # @return [ListBatchesResponseBody]
    def list_batches(opts = {})
      data, _status_code, _headers = list_batches_with_http_info(opts)
      data
    end

    # List Batches
    # List Batches associated with your Shipengine account
    # @param [Hash] opts the optional parameters
    # @option opts [BatchStatus] :status 
    # @option opts [Integer] :page Return a specific page of results. Defaults to the first page. If set to a number that&#39;s greater than the number of pages of results, an empty page is returned. 
    # @option opts [Integer] :page_size The number of results to return per response.
    # @option opts [SortDir] :sort_dir Controls the sort order of the query.
    # @option opts [BatchesSortBy] :sort_by 
    # @return [Array<(ListBatchesResponseBody, Integer, Hash)>] ListBatchesResponseBody data, response status code and response headers
    def list_batches_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.list_batches ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling BatchesApi.list_batches, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling BatchesApi.list_batches, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/v1/batches'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_dir'] = opts[:'sort_dir'] if !opts[:'sort_dir'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ListBatchesResponseBody' 

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
        @api_client.config.logger.debug "API called: BatchesApi#list_batches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Process Batch ID Labels
    # Process Batch ID Labels
    # @param batch_id [String] Batch ID
    # @param process_batch_request_body [ProcessBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def process_batch(batch_id, process_batch_request_body, opts = {})
      data, _status_code, _headers = process_batch_with_http_info(batch_id, process_batch_request_body, opts)
      data
    end

    # Process Batch ID Labels
    # Process Batch ID Labels
    # @param batch_id [String] Batch ID
    # @param process_batch_request_body [ProcessBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def process_batch_with_http_info(batch_id, process_batch_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.process_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.process_batch"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.process_batch, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.process_batch, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.process_batch, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'process_batch_request_body' is set
      if @api_client.config.client_side_validation && process_batch_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'process_batch_request_body' when calling BatchesApi.process_batch"
      end
      # resource path
      local_var_path = '/v1/batches/{batch_id}/process/labels'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(process_batch_request_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchesApi#process_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove From Batch
    # Remove a shipment or rate from a batch
    # @param batch_id [String] Batch ID
    # @param remove_from_batch_request_body [RemoveFromBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def remove_from_batch(batch_id, remove_from_batch_request_body, opts = {})
      data, _status_code, _headers = remove_from_batch_with_http_info(batch_id, remove_from_batch_request_body, opts)
      data
    end

    # Remove From Batch
    # Remove a shipment or rate from a batch
    # @param batch_id [String] Batch ID
    # @param remove_from_batch_request_body [RemoveFromBatchRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def remove_from_batch_with_http_info(batch_id, remove_from_batch_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.remove_from_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.remove_from_batch"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.remove_from_batch, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.remove_from_batch, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.remove_from_batch, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'remove_from_batch_request_body' is set
      if @api_client.config.client_side_validation && remove_from_batch_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'remove_from_batch_request_body' when calling BatchesApi.remove_from_batch"
      end
      # resource path
      local_var_path = '/v1/batches/{batch_id}/remove'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(remove_from_batch_request_body) 

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchesApi#remove_from_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update Batch By Id
    # Update Batch By Id
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @return [String]
    def update_batch(batch_id, opts = {})
      data, _status_code, _headers = update_batch_with_http_info(batch_id, opts)
      data
    end

    # Update Batch By Id
    # Update Batch By Id
    # @param batch_id [String] Batch ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def update_batch_with_http_info(batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BatchesApi.update_batch ...'
      end
      # verify the required parameter 'batch_id' is set
      if @api_client.config.client_side_validation && batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'batch_id' when calling BatchesApi.update_batch"
      end
      if @api_client.config.client_side_validation && batch_id.to_s.length > 25
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.update_batch, the character length must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && batch_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "batch_id" when calling BatchesApi.update_batch, the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^se(-[a-z0-9]+)+$/)
      if @api_client.config.client_side_validation && batch_id !~ pattern
        fail ArgumentError, "invalid value for 'batch_id' when calling BatchesApi.update_batch, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/v1/batches/{batch_id}'.sub('{' + 'batch_id' + '}', CGI.escape(batch_id.to_s))

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

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BatchesApi#update_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end