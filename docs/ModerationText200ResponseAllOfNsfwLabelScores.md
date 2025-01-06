# ModerationAPI::ModerationText200ResponseAllOfNsfwLabelScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sensitive** | **Float** | Mentions religion, politics, race, etc., but is neutral or positive. | [optional] |
| **unsafe** | **Float** | Sexual, hateful, profane, and inappropriate content. | [optional] |
| **neutral** | **Float** |  | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfNsfwLabelScores.new(
  sensitive: null,
  unsafe: null,
  neutral: null
)
```

