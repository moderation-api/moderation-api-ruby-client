# ModerationAPI::ActionsExecuteDeprecatedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_ids** | **Array&lt;String&gt;** | The IDs of the content items to perform the action on. |  |
| **queue_id** | **String** | The ID of the queue the action was performed from if any. | [optional] |
| **value** | **String** | The value of the action. Useful to set a reason for the action etc. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ActionsExecuteDeprecatedRequest.new(
  content_ids: null,
  queue_id: null,
  value: null
)
```

