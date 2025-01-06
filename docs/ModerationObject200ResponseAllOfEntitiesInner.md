# ModerationAPI::ModerationObject200ResponseAllOfEntitiesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | **String** | The model that found the entity |  |
| **matches** | **Array&lt;String&gt;** | The matches of the entity |  |
| **score** | **Float** | The similarity score of the matches | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationObject200ResponseAllOfEntitiesInner.new(
  model: null,
  matches: null,
  score: null
)
```

