# ModerationApi::ModerationObjectRequestValueDataValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of content (e.g., \&quot;text\&quot;, \&quot;image\&quot;, \&quot;video\&quot;) |  |
| **value** | **String** | The content to analyze |  |
| **model_ids** | **Array&lt;String&gt;** | Optional array of specific model IDs to use | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ModerationObjectRequestValueDataValue.new(
  type: null,
  value: null,
  model_ids: null
)
```

