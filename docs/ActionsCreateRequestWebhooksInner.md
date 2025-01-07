# ModerationApi::ActionsCreateRequestWebhooksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The webhook&#39;s name, used to identify it in the dashboard |  |
| **url** | **String** | The webhook&#39;s URL. We&#39;ll call this URL when the event occurs. |  |
| **description** | **String** | The webhook&#39;s description | [optional] |
| **id** | **String** | ID of an existing webhook or undefined if this is a new webhook. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ActionsCreateRequestWebhooksInner.new(
  name: null,
  url: null,
  description: null,
  id: null
)
```

