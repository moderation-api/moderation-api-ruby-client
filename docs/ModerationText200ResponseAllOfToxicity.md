# ModerationAPI::ModerationText200ResponseAllOfToxicity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_scores** | [**ModerationText200ResponseAllOfToxicityLabelScores**](ModerationText200ResponseAllOfToxicityLabelScores.md) |  |  |
| **label** | **String** | The label of the model | [optional] |
| **score** | **Float** | The confidence of the model | [optional] |
| **error** | **String** | Indicates an error with the model | [optional] |
| **warning** | **String** | Indicates a warning from the model, e.g. if the text is too short or long and the model might not be accurate | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfToxicity.new(
  label_scores: null,
  label: null,
  score: null,
  error: null,
  warning: null
)
```

