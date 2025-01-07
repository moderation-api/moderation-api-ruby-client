# ModerationApi::AccountApi

All URIs are relative to *https://moderationapi.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_get**](AccountApi.md#account_get) | **GET** /account | Get account details |


## account_get

> <AccountGet200Response> account_get

Get account details

Get account details

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::AccountApi.new

begin
  # Get account details
  result = api_instance.account_get
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling AccountApi->account_get: #{e}"
end
```

#### Using the account_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountGet200Response>, Integer, Hash)> account_get_with_http_info

```ruby
begin
  # Get account details
  data, status_code, headers = api_instance.account_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountGet200Response>
rescue ModerationApi::ApiError => e
  puts "Error when calling AccountApi->account_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountGet200Response**](AccountGet200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

