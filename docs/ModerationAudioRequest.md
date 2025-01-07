# ModerationApi::ModerationAudioRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL of the audio you want to analyze. |  |
| **content_id** | **String** | The unique ID of the content in your database. | [optional] |
| **do_not_store** | **Boolean** | Do not store the content. The content won&#39;t enter the review queue | [optional] |
| **author_id** | **String** | The author of the content. | [optional] |
| **context_id** | **String** | For example the ID of a chat room or a post | [optional] |
| **metadata** | **Hash&lt;String, Object&gt;** | Any metadata you want to store with the content | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ModerationAudioRequest.new(
  url: null,
  content_id: null,
  do_not_store: null,
  author_id: null,
  context_id: null,
  metadata: null
)
```

