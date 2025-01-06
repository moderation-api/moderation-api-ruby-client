# ModerationAPI::ModerationText200ResponseAllOfNsfw

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The label of the model | [optional] |
| **score** | **Float** | The confidence of the model | [optional] |
| **error** | **String** | Indicates an error with the model | [optional] |
| **warning** | **String** | Indicates a warning from the model, e.g. if the text is too short or long and the model might not be accurate | [optional] |
| **label_scores** | [**ModerationText200ResponseAllOfNsfwLabelScores**](ModerationText200ResponseAllOfNsfwLabelScores.md) |  | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfNsfw.new(
  label: null,
  score: null,
  error: null,
  warning: null,
  label_scores: null
)
```

