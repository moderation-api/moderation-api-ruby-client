# ModerationApi::ModerationImage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Success if the request was successful |  |
| **request** | [**ModerationText200ResponseAllOfRequest**](ModerationText200ResponseAllOfRequest.md) |  |  |
| **flagged** | **Boolean** | Whether the content was flagged by any models |  |
| **labels** | [**Array&lt;ModerationImage200ResponseLabelsInner&gt;**](ModerationImage200ResponseLabelsInner.md) | The scores of each label |  |
| **content_id** | **String** | The ID of the content. Only returned if the content was stored. | [optional] |
| **texts** | **Array&lt;String&gt;** | The texts found in the image, if the image text model is enabled | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ModerationImage200Response.new(
  status: null,
  request: null,
  flagged: null,
  labels: null,
  content_id: null,
  texts: null
)
```

