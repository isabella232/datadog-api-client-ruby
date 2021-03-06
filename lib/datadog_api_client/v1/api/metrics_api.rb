=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'cgi'

module DatadogAPIClient::V1
  class MetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get metric metadata
    # Get metadata about a specific metric.
    # @param metric_name [String] Name of the metric for which to get metadata.
    # @param [Hash] opts the optional parameters
    # @return [MetricMetadata]
    def get_metric_metadata(metric_name, opts = {})
      data, _status_code, _headers = get_metric_metadata_with_http_info(metric_name, opts)
      data
    end

    # Get metric metadata
    # Get metadata about a specific metric.
    # @param metric_name [String] Name of the metric for which to get metadata.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricMetadata, Integer, Hash)>] MetricMetadata data, response status code and response headers
    def get_metric_metadata_with_http_info(metric_name, opts = {})

      if @api_client.config.unstable_operations.has_key?(:get_metric_metadata)
        unstable_enabled = @api_client.config.unstable_operations[:get_metric_metadata]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "get_metric_metadata")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "get_metric_metadata"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsApi.get_metric_metadata ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsApi.get_metric_metadata"
      end
      # resource path
      local_var_path = '/api/v1/metrics/{metric_name}'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetricMetadata'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"MetricsApi.get_metric_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#get_metric_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get active metrics list
    # Get the list of actively reporting metrics from a given time until now.
    # @param from [Integer] Seconds since the Unix epoch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :host Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag.
    # @return [MetricsListResponse]
    def list_active_metrics(from, opts = {})
      data, _status_code, _headers = list_active_metrics_with_http_info(from, opts)
      data
    end

    # Get active metrics list
    # Get the list of actively reporting metrics from a given time until now.
    # @param from [Integer] Seconds since the Unix epoch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :host Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag.
    # @return [Array<(MetricsListResponse, Integer, Hash)>] MetricsListResponse data, response status code and response headers
    def list_active_metrics_with_http_info(from, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_active_metrics)
        unstable_enabled = @api_client.config.unstable_operations[:list_active_metrics]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_active_metrics")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "list_active_metrics"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsApi.list_active_metrics ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling MetricsApi.list_active_metrics"
      end
      # resource path
      local_var_path = '/api/v1/metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'host'] = opts[:'host'] if !opts[:'host'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetricsListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"MetricsApi.list_active_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#list_active_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search metrics
    # Search for metrics from the last 24 hours in Datadog.
    # @param q [String] Query string to search metrics upon. Must be prefixed with &#x60;metrics:&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [MetricSearchResponse]
    def list_metrics(q, opts = {})
      data, _status_code, _headers = list_metrics_with_http_info(q, opts)
      data
    end

    # Search metrics
    # Search for metrics from the last 24 hours in Datadog.
    # @param q [String] Query string to search metrics upon. Must be prefixed with &#x60;metrics:&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricSearchResponse, Integer, Hash)>] MetricSearchResponse data, response status code and response headers
    def list_metrics_with_http_info(q, opts = {})

      if @api_client.config.unstable_operations.has_key?(:list_metrics)
        unstable_enabled = @api_client.config.unstable_operations[:list_metrics]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "list_metrics")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "list_metrics"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsApi.list_metrics ...'
      end
      # verify the required parameter 'q' is set
      if @api_client.config.client_side_validation && q.nil?
        fail ArgumentError, "Missing the required parameter 'q' when calling MetricsApi.list_metrics"
      end
      # resource path
      local_var_path = '/api/v1/search'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'q'] = q

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetricSearchResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"MetricsApi.list_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#list_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Query timeseries points
    # Query timeseries points.
    # @param from [Integer] Start of the queried time period, seconds since the Unix epoch.
    # @param to [Integer] End of the queried time period, seconds since the Unix epoch.
    # @param query [String] Query string.
    # @param [Hash] opts the optional parameters
    # @return [MetricsQueryResponse]
    def query_metrics(from, to, query, opts = {})
      data, _status_code, _headers = query_metrics_with_http_info(from, to, query, opts)
      data
    end

    # Query timeseries points
    # Query timeseries points.
    # @param from [Integer] Start of the queried time period, seconds since the Unix epoch.
    # @param to [Integer] End of the queried time period, seconds since the Unix epoch.
    # @param query [String] Query string.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricsQueryResponse, Integer, Hash)>] MetricsQueryResponse data, response status code and response headers
    def query_metrics_with_http_info(from, to, query, opts = {})

      if @api_client.config.unstable_operations.has_key?(:query_metrics)
        unstable_enabled = @api_client.config.unstable_operations[:query_metrics]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "query_metrics")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "query_metrics"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsApi.query_metrics ...'
      end
      # verify the required parameter 'from' is set
      if @api_client.config.client_side_validation && from.nil?
        fail ArgumentError, "Missing the required parameter 'from' when calling MetricsApi.query_metrics"
      end
      # verify the required parameter 'to' is set
      if @api_client.config.client_side_validation && to.nil?
        fail ArgumentError, "Missing the required parameter 'to' when calling MetricsApi.query_metrics"
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling MetricsApi.query_metrics"
      end
      # resource path
      local_var_path = '/api/v1/query'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'from'] = from
      query_params[:'to'] = to
      query_params[:'query'] = query

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetricsQueryResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"MetricsApi.query_metrics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#query_metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit metric metadata
    # Edit metadata of a specific metric. Find out more about [supported types](https://docs.datadoghq.com/developers/metrics).
    # @param metric_name [String] Name of the metric for which to edit metadata.
    # @param body [MetricMetadata] New metadata.
    # @param [Hash] opts the optional parameters
    # @return [MetricMetadata]
    def update_metric_metadata(metric_name, body, opts = {})
      data, _status_code, _headers = update_metric_metadata_with_http_info(metric_name, body, opts)
      data
    end

    # Edit metric metadata
    # Edit metadata of a specific metric. Find out more about [supported types](https://docs.datadoghq.com/developers/metrics).
    # @param metric_name [String] Name of the metric for which to edit metadata.
    # @param body [MetricMetadata] New metadata.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetricMetadata, Integer, Hash)>] MetricMetadata data, response status code and response headers
    def update_metric_metadata_with_http_info(metric_name, body, opts = {})

      if @api_client.config.unstable_operations.has_key?(:update_metric_metadata)
        unstable_enabled = @api_client.config.unstable_operations[:update_metric_metadata]
        if unstable_enabled
          @api_client.config.logger.warn format("Using unstable operation '%s'", "update_metric_metadata")
        else
          raise ApiError.new(message: format("Unstable operation '%s' is disabled", "update_metric_metadata"))
        end
      end

      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MetricsApi.update_metric_metadata ...'
      end
      # verify the required parameter 'metric_name' is set
      if @api_client.config.client_side_validation && metric_name.nil?
        fail ArgumentError, "Missing the required parameter 'metric_name' when calling MetricsApi.update_metric_metadata"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling MetricsApi.update_metric_metadata"
      end
      # resource path
      local_var_path = '/api/v1/metrics/{metric_name}'.sub('{' + 'metric_name' + '}', CGI.escape(metric_name.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'MetricMetadata'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'appKeyAuth']

      new_options = opts.merge(
        :operation => :"MetricsApi.update_metric_metadata",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#update_metric_metadata\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
