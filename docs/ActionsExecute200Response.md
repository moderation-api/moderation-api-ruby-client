# ModerationAPI::ActionsExecute200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | Action executed successfully. |  |
| **action_id** | **String** | The ID of the action. |  |
| **ids** | **Array&lt;String&gt;** | The IDs of the content items. |  |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ActionsExecute200Response.new(
  success: null,
  action_id: null,
  ids: null
)
```

