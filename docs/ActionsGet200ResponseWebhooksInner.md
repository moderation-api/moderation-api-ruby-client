# ModerationApi::ActionsGet200ResponseWebhooksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The webhook&#39;s name, used to identify it in the dashboard |  |
| **url** | **String** | The webhook&#39;s URL. We&#39;ll call this URL when the event occurs. |  |
| **id** | **String** | The ID of the webhook. |  |
| **description** | **String** | The webhook&#39;s description | [optional] |
| **moderation_action_id** | **String** | The ID of the moderation action to trigger the webhook on. Only used for moderation action webhooks. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ActionsGet200ResponseWebhooksInner.new(
  name: null,
  url: null,
  id: null,
  description: null,
  moderation_action_id: null
)
```

