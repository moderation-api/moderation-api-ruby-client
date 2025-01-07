# ModerationApi::ActionsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the action. |  |
| **key** | **String** | User defined key of the action. | [optional] |
| **description** | **String** | The description of the action. | [optional] |
| **queue_behaviour** | **String** | Whether the action resolves and removes the item, unresolves and re-add it to the queue, or does not change the resolve status. | [optional][default to &#39;NO_CHANGE&#39;] |
| **filter_in_queue_ids** | **Array&lt;String&gt;** | The IDs of the queues the action is available in. | [optional] |
| **position** | **String** | Show the action in all queues, selected queues or no queues (to use via API only). | [optional][default to &#39;ALL_QUEUES&#39;] |
| **possible_values** | [**Array&lt;ActionsList200ResponseInnerPossibleValuesInner&gt;**](ActionsList200ResponseInnerPossibleValuesInner.md) | The possible values of the action. The user will be prompted to select one of these values when executing the action. | [optional] |
| **value_required** | **Boolean** | Whether the action requires a value to be executed. | [optional][default to false] |
| **free_text** | **Boolean** | Whether the action allows any text to be entered as a value or if it must be one of the possible values. | [optional][default to false] |
| **webhooks** | [**Array&lt;ActionsCreateRequestWebhooksInner&gt;**](ActionsCreateRequestWebhooksInner.md) | The action&#39;s webhooks. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ActionsCreateRequest.new(
  name: null,
  key: null,
  description: null,
  queue_behaviour: null,
  filter_in_queue_ids: null,
  position: null,
  possible_values: null,
  value_required: null,
  free_text: null,
  webhooks: null
)
```

