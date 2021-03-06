# DatadogAPIClient::V1::MetricsApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_metric_metadata**](MetricsApi.md#get_metric_metadata) | **GET** /api/v1/metrics/{metric_name} | Get metric metadata |
| [**list_active_metrics**](MetricsApi.md#list_active_metrics) | **GET** /api/v1/metrics | Get active metrics list |
| [**list_metrics**](MetricsApi.md#list_metrics) | **GET** /api/v1/search | Search metrics |
| [**query_metrics**](MetricsApi.md#query_metrics) | **GET** /api/v1/query | Query timeseries points |
| [**update_metric_metadata**](MetricsApi.md#update_metric_metadata) | **PUT** /api/v1/metrics/{metric_name} | Edit metric metadata |


## get_metric_metadata

> <MetricMetadata> get_metric_metadata(metric_name)

Get metric metadata

Get metadata about a specific metric.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
metric_name = 'metric_name_example' # String | Name of the metric for which to get metadata.

begin
  # Get metric metadata
  result = api_instance.get_metric_metadata(metric_name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->get_metric_metadata: #{e}"
end
```

#### Using the get_metric_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricMetadata>, Integer, Hash)> get_metric_metadata_with_http_info(metric_name)

```ruby
begin
  # Get metric metadata
  data, status_code, headers = api_instance.get_metric_metadata_with_http_info(metric_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricMetadata>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->get_metric_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | Name of the metric for which to get metadata. |  |

### Return type

[**MetricMetadata**](MetricMetadata.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_active_metrics

> <MetricsListResponse> list_active_metrics(from, opts)

Get active metrics list

Get the list of actively reporting metrics from a given time until now.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
from = 789 # Integer | Seconds since the Unix epoch.
opts = {
  host: 'host_example' # String | Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag.
}

begin
  # Get active metrics list
  result = api_instance.list_active_metrics(from, opts)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->list_active_metrics: #{e}"
end
```

#### Using the list_active_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsListResponse>, Integer, Hash)> list_active_metrics_with_http_info(from, opts)

```ruby
begin
  # Get active metrics list
  data, status_code, headers = api_instance.list_active_metrics_with_http_info(from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsListResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->list_active_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | Seconds since the Unix epoch. |  |
| **host** | **String** | Hostname for filtering the list of metrics returned. If set, metrics retrieved are those with the corresponding hostname tag. | [optional] |

### Return type

[**MetricsListResponse**](MetricsListResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_metrics

> <MetricSearchResponse> list_metrics(q)

Search metrics

Search for metrics from the last 24 hours in Datadog.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
q = 'q_example' # String | Query string to search metrics upon. Must be prefixed with `metrics:`.

begin
  # Search metrics
  result = api_instance.list_metrics(q)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->list_metrics: #{e}"
end
```

#### Using the list_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricSearchResponse>, Integer, Hash)> list_metrics_with_http_info(q)

```ruby
begin
  # Search metrics
  data, status_code, headers = api_instance.list_metrics_with_http_info(q)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricSearchResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->list_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Query string to search metrics upon. Must be prefixed with &#x60;metrics:&#x60;. |  |

### Return type

[**MetricSearchResponse**](MetricSearchResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## query_metrics

> <MetricsQueryResponse> query_metrics(from, to, query)

Query timeseries points

Query timeseries points.

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
from = 789 # Integer | Start of the queried time period, seconds since the Unix epoch.
to = 789 # Integer | End of the queried time period, seconds since the Unix epoch.
query = 'query_example' # String | Query string.

begin
  # Query timeseries points
  result = api_instance.query_metrics(from, to, query)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->query_metrics: #{e}"
end
```

#### Using the query_metrics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricsQueryResponse>, Integer, Hash)> query_metrics_with_http_info(from, to, query)

```ruby
begin
  # Query timeseries points
  data, status_code, headers = api_instance.query_metrics_with_http_info(from, to, query)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricsQueryResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->query_metrics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | Start of the queried time period, seconds since the Unix epoch. |  |
| **to** | **Integer** | End of the queried time period, seconds since the Unix epoch. |  |
| **query** | **String** | Query string. |  |

### Return type

[**MetricsQueryResponse**](MetricsQueryResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_metric_metadata

> <MetricMetadata> update_metric_metadata(metric_name, body)

Edit metric metadata

Edit metadata of a specific metric. Find out more about [supported types](https://docs.datadoghq.com/developers/metrics).

### Examples

```ruby
require 'time'
require 'datadog_api_client/v1'
# setup authorization
DatadogAPIClient::V1.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = ENV["DD_CLIENT_API_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure API key authorization: appKeyAuth
  config.api_key['appKeyAuth'] = ENV["DD_CLIENT_APP_KEY"]
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['appKeyAuth'] = 'Bearer'
end

api_instance = DatadogAPIClient::V1::MetricsApi.new
metric_name = 'metric_name_example' # String | Name of the metric for which to edit metadata.
body = DatadogAPIClient::V1::MetricMetadata.new # MetricMetadata | New metadata.

begin
  # Edit metric metadata
  result = api_instance.update_metric_metadata(metric_name, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->update_metric_metadata: #{e}"
end
```

#### Using the update_metric_metadata_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetricMetadata>, Integer, Hash)> update_metric_metadata_with_http_info(metric_name, body)

```ruby
begin
  # Edit metric metadata
  data, status_code, headers = api_instance.update_metric_metadata_with_http_info(metric_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetricMetadata>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling MetricsApi->update_metric_metadata_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metric_name** | **String** | Name of the metric for which to edit metadata. |  |
| **body** | [**MetricMetadata**](MetricMetadata.md) | New metadata. |  |

### Return type

[**MetricMetadata**](MetricMetadata.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

