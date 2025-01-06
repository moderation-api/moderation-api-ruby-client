# ModerationAPI::ModerateApi

All URIs are relative to *https://moderationapi.com/api/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**moderation_audio**](ModerateApi.md#moderation_audio) | **POST** /moderate/audio | Analyze audio |
| [**moderation_image**](ModerateApi.md#moderation_image) | **POST** /moderate/image | Analyze image |
| [**moderation_object**](ModerateApi.md#moderation_object) | **POST** /moderate/object | Analyze object. |
| [**moderation_text**](ModerateApi.md#moderation_text) | **POST** /moderate/text | Analyze text. |
| [**moderation_video**](ModerateApi.md#moderation_video) | **POST** /moderate/video | Analyze video |


## moderation_audio

> <ModerationVideo200Response> moderation_audio(moderation_audio_request)

Analyze audio

Analyze audio with your Moderation API project

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationAPI.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationAPI::ModerateApi.new
moderation_audio_request = ModerationAPI::ModerationAudioRequest.new({url: 'url_example'}) # ModerationAudioRequest | 

begin
  # Analyze audio
  result = api_instance.moderation_audio(moderation_audio_request)
  p result
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_audio: #{e}"
end
```

#### Using the moderation_audio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModerationVideo200Response>, Integer, Hash)> moderation_audio_with_http_info(moderation_audio_request)

```ruby
begin
  # Analyze audio
  data, status_code, headers = api_instance.moderation_audio_with_http_info(moderation_audio_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModerationVideo200Response>
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_audio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moderation_audio_request** | [**ModerationAudioRequest**](ModerationAudioRequest.md) |  |  |

### Return type

[**ModerationVideo200Response**](ModerationVideo200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## moderation_image

> <ModerationImage200Response> moderation_image(moderation_image_request)

Analyze image

Analyze image with your Moderation API project

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationAPI.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationAPI::ModerateApi.new
moderation_image_request = ModerationAPI::ModerationImageRequest.new({url: 'url_example'}) # ModerationImageRequest | 

begin
  # Analyze image
  result = api_instance.moderation_image(moderation_image_request)
  p result
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_image: #{e}"
end
```

#### Using the moderation_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModerationImage200Response>, Integer, Hash)> moderation_image_with_http_info(moderation_image_request)

```ruby
begin
  # Analyze image
  data, status_code, headers = api_instance.moderation_image_with_http_info(moderation_image_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModerationImage200Response>
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moderation_image_request** | [**ModerationImageRequest**](ModerationImageRequest.md) |  |  |

### Return type

[**ModerationImage200Response**](ModerationImage200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## moderation_object

> <ModerationObject200Response> moderation_object(moderation_object_request)

Analyze object.

Analyze an object with multiple fields including text, images, video, audio. Use to moderate a post, a profile, a form submission or anything that have multiple fields.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationAPI.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationAPI::ModerateApi.new
moderation_object_request = ModerationAPI::ModerationObjectRequest.new({value: ModerationAPI::ModerationObjectRequestValue.new({type: 'profile', data: { key: ModerationAPI::ModerationObjectRequestValueDataValue.new({type: 'text', value: 'value_example'})}})}) # ModerationObjectRequest | 

begin
  # Analyze object.
  result = api_instance.moderation_object(moderation_object_request)
  p result
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_object: #{e}"
end
```

#### Using the moderation_object_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModerationObject200Response>, Integer, Hash)> moderation_object_with_http_info(moderation_object_request)

```ruby
begin
  # Analyze object.
  data, status_code, headers = api_instance.moderation_object_with_http_info(moderation_object_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModerationObject200Response>
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_object_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moderation_object_request** | [**ModerationObjectRequest**](ModerationObjectRequest.md) |  |  |

### Return type

[**ModerationObject200Response**](ModerationObject200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## moderation_text

> <ModerationText200Response> moderation_text(moderation_text_request)

Analyze text.

Analyze text with your Moderation API project.

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationAPI.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationAPI::ModerateApi.new
moderation_text_request = ModerationAPI::ModerationTextRequest.new({value: 'value_example'}) # ModerationTextRequest | 

begin
  # Analyze text.
  result = api_instance.moderation_text(moderation_text_request)
  p result
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_text: #{e}"
end
```

#### Using the moderation_text_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModerationText200Response>, Integer, Hash)> moderation_text_with_http_info(moderation_text_request)

```ruby
begin
  # Analyze text.
  data, status_code, headers = api_instance.moderation_text_with_http_info(moderation_text_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModerationText200Response>
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moderation_text_request** | [**ModerationTextRequest**](ModerationTextRequest.md) |  |  |

### Return type

[**ModerationText200Response**](ModerationText200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## moderation_video

> <ModerationVideo200Response> moderation_video(moderation_video_request)

Analyze video

Analyze video with your Moderation API project

### Examples

```ruby
require 'time'
require 'moderation_api'
# setup authorization
ModerationAPI.configure do |config|
  # Configure Bearer authorization: Authorization
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = ModerationAPI::ModerateApi.new
moderation_video_request = ModerationAPI::ModerationVideoRequest.new({url: 'url_example'}) # ModerationVideoRequest | 

begin
  # Analyze video
  result = api_instance.moderation_video(moderation_video_request)
  p result
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_video: #{e}"
end
```

#### Using the moderation_video_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModerationVideo200Response>, Integer, Hash)> moderation_video_with_http_info(moderation_video_request)

```ruby
begin
  # Analyze video
  data, status_code, headers = api_instance.moderation_video_with_http_info(moderation_video_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModerationVideo200Response>
rescue ModerationAPI::ApiError => e
  puts "Error when calling ModerateApi->moderation_video_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **moderation_video_request** | [**ModerationVideoRequest**](ModerationVideoRequest.md) |  |  |

### Return type

[**ModerationVideo200Response**](ModerationVideo200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

