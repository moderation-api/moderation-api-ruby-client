# ModerationAPI::ModerationVideo200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Success if the request was successful |  |
| **request** | [**ModerationText200ResponseAllOfRequest**](ModerationText200ResponseAllOfRequest.md) |  |  |
| **flagged** | **Boolean** | Whether the content was flagged by any models |  |
| **content_id** | **String** | The ID of the content. Only returned if the content was stored. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationVideo200Response.new(
  status: null,
  request: null,
  flagged: null,
  content_id: null
)
```

