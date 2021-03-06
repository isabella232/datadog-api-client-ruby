# DatadogAPIClient::V1::AuthenticationApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**validate**](AuthenticationApi.md#validate) | **GET** /api/v1/validate | Validate API key |


## validate

> <AuthenticationValidationResponse> validate

Validate API key

Check if the API key (not the APP key) is valid. If invalid, a 403 is returned.

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
end

api_instance = DatadogAPIClient::V1::AuthenticationApi.new

begin
  # Validate API key
  result = api_instance.validate
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling AuthenticationApi->validate: #{e}"
end
```

#### Using the validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuthenticationValidationResponse>, Integer, Hash)> validate_with_http_info

```ruby
begin
  # Validate API key
  data, status_code, headers = api_instance.validate_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuthenticationValidationResponse>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling AuthenticationApi->validate_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AuthenticationValidationResponse**](AuthenticationValidationResponse.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

