# ModerationAPI::ModerationText200ResponseAllOfToxicityLabelScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **toxicity** | **Float** | Rude or disrespectful content. | [optional] |
| **profanity** | **Float** | Swearing, curse words, and other obscene language. | [optional] |
| **discrimination** | **Float** | Discrimination of race, religion, gender, etc. | [optional] |
| **severe_toxicity** | **Float** | Very hateful and aggressive content. | [optional] |
| **insult** | **Float** | Negative comments about looks or personality etc. | [optional] |
| **threat** | **Float** | Content containing intention to harm or violence. | [optional] |
| **neutral** | **Float** |  | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfToxicityLabelScores.new(
  toxicity: null,
  profanity: null,
  discrimination: null,
  severe_toxicity: null,
  insult: null,
  threat: null,
  neutral: null
)
```

