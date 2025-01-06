# ModerationAPI::ModerationText200ResponseAllOfProprietyLabelScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flirtation** | **Float** | Pickup lines, compliments on appearance, etc. | [optional] |
| **sexually_explicit** | **Float** | References to sexual acts, body parts, etc. | [optional] |
| **neutral** | **Float** |  | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfProprietyLabelScores.new(
  flirtation: null,
  sexually_explicit: null,
  neutral: null
)
```

