# ModerationApi::QueueActionsApi

All URIs are relative to *https://moderationapi.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**actions_create**](QueueActionsApi.md#actions_create) | **POST** /actions | Create an action |
| [**actions_delete**](QueueActionsApi.md#actions_delete) | **DELETE** /actions/{id} | Delete an action |
| [**actions_execute**](QueueActionsApi.md#actions_execute) | **POST** /actions/execute | Execute an action |
| [**actions_execute_deprecated**](QueueActionsApi.md#actions_execute_deprecated) | **POST** /actions/{actionId}/execute | Execute an action |
| [**actions_get**](QueueActionsApi.md#actions_get) | **GET** /actions/{id} | Get an action |
| [**actions_list**](QueueActionsApi.md#actions_list) | **GET** /actions | List actions |
| [**actions_update**](QueueActionsApi.md#actions_update) | **PUT** /actions/{id} | Update an action |


## actions_create

> <ActionsList200ResponseInner> actions_create(actions_create_request)

Create an action

Create an action.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
actions_create_request = ModerationApi::ActionsCreateRequest.new({name: 'name_example'}) # ActionsCreateRequest | 

begin
  # Create an action
  result = api_instance.actions_create(actions_create_request)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_create: #{e}"
end
```

#### Using the actions_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsList200ResponseInner>, Integer, Hash)> actions_create_with_http_info(actions_create_request)

```ruby
begin
  # Create an action
  data, status_code, headers = api_instance.actions_create_with_http_info(actions_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsList200ResponseInner>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions_create_request** | [**ActionsCreateRequest**](ActionsCreateRequest.md) |  |  |

### Return type

[**ActionsList200ResponseInner**](ActionsList200ResponseInner.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## actions_delete

> <ActionsDelete200Response> actions_delete(id)

Delete an action

Delete an action and all of its webhooks.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
id = '60c9e1c0e4e7e1001c7a0e1d' # String | The ID of the action to delete.

begin
  # Delete an action
  result = api_instance.actions_delete(id)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_delete: #{e}"
end
```

#### Using the actions_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsDelete200Response>, Integer, Hash)> actions_delete_with_http_info(id)

```ruby
begin
  # Delete an action
  data, status_code, headers = api_instance.actions_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsDelete200Response>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the action to delete. |  |

### Return type

[**ActionsDelete200Response**](ActionsDelete200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## actions_execute

> <ActionsExecute200Response> actions_execute(actions_execute_request)

Execute an action

Execute an action on a set of content items in a queue.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
actions_execute_request = ModerationApi::ActionsExecuteRequest.new({content_ids: ['content_ids_example'], action_id: 'action_id_example'}) # ActionsExecuteRequest | 

begin
  # Execute an action
  result = api_instance.actions_execute(actions_execute_request)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_execute: #{e}"
end
```

#### Using the actions_execute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsExecute200Response>, Integer, Hash)> actions_execute_with_http_info(actions_execute_request)

```ruby
begin
  # Execute an action
  data, status_code, headers = api_instance.actions_execute_with_http_info(actions_execute_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsExecute200Response>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_execute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions_execute_request** | [**ActionsExecuteRequest**](ActionsExecuteRequest.md) |  |  |

### Return type

[**ActionsExecute200Response**](ActionsExecute200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## actions_execute_deprecated

> <ActionsExecute200Response> actions_execute_deprecated(action_id, actions_execute_deprecated_request)

Execute an action

Execute an action on a set of content items in a queue.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
action_id = 'action_id_example' # String | The ID or key of the action to execute.
actions_execute_deprecated_request = ModerationApi::ActionsExecuteDeprecatedRequest.new({content_ids: ['content_ids_example']}) # ActionsExecuteDeprecatedRequest | 

begin
  # Execute an action
  result = api_instance.actions_execute_deprecated(action_id, actions_execute_deprecated_request)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_execute_deprecated: #{e}"
end
```

#### Using the actions_execute_deprecated_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsExecute200Response>, Integer, Hash)> actions_execute_deprecated_with_http_info(action_id, actions_execute_deprecated_request)

```ruby
begin
  # Execute an action
  data, status_code, headers = api_instance.actions_execute_deprecated_with_http_info(action_id, actions_execute_deprecated_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsExecute200Response>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_execute_deprecated_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_id** | **String** | The ID or key of the action to execute. |  |
| **actions_execute_deprecated_request** | [**ActionsExecuteDeprecatedRequest**](ActionsExecuteDeprecatedRequest.md) |  |  |

### Return type

[**ActionsExecute200Response**](ActionsExecute200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## actions_get

> <ActionsGet200Response> actions_get(id)

Get an action

Get an action by ID.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
id = '60c9e1c0e4e7e1001c7a0e1d' # String | The ID of the action to get.

begin
  # Get an action
  result = api_instance.actions_get(id)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_get: #{e}"
end
```

#### Using the actions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsGet200Response>, Integer, Hash)> actions_get_with_http_info(id)

```ruby
begin
  # Get an action
  data, status_code, headers = api_instance.actions_get_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsGet200Response>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the action to get. |  |

### Return type

[**ActionsGet200Response**](ActionsGet200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## actions_list

> <Array<ActionsList200ResponseInner>> actions_list(opts)

List actions

List actions for the current user.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
opts = {
  queue_id: '60c9e1c0e4e7e1001c7a0e1d' # String | Only return actions available in this queue.
}

begin
  # List actions
  result = api_instance.actions_list(opts)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_list: #{e}"
end
```

#### Using the actions_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ActionsList200ResponseInner>>, Integer, Hash)> actions_list_with_http_info(opts)

```ruby
begin
  # List actions
  data, status_code, headers = api_instance.actions_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ActionsList200ResponseInner>>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **queue_id** | **String** | Only return actions available in this queue. | [optional] |

### Return type

[**Array&lt;ActionsList200ResponseInner&gt;**](ActionsList200ResponseInner.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## actions_update

> <ActionsList200ResponseInner> actions_update(id, actions_update_request)

Update an action

Update an action.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationApi.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationApi::QueueActionsApi.new
id = '60c9e1c0e4e7e1001c7a0e1d' # String | The ID of the action to update.
actions_update_request = ModerationApi::ActionsUpdateRequest.new # ActionsUpdateRequest | 

begin
  # Update an action
  result = api_instance.actions_update(id, actions_update_request)
  p result
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_update: #{e}"
end
```

#### Using the actions_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ActionsList200ResponseInner>, Integer, Hash)> actions_update_with_http_info(id, actions_update_request)

```ruby
begin
  # Update an action
  data, status_code, headers = api_instance.actions_update_with_http_info(id, actions_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ActionsList200ResponseInner>
rescue ModerationApi::ApiError => e
  puts "Error when calling QueueActionsApi->actions_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the action to update. |  |
| **actions_update_request** | [**ActionsUpdateRequest**](ActionsUpdateRequest.md) |  |  |

### Return type

[**ActionsList200ResponseInner**](ActionsList200ResponseInner.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

