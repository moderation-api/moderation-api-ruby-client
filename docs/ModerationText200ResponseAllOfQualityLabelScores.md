# ModerationAPI::ModerationText200ResponseAllOfQualityLabelScores

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unsubstantial** | **Float** | Trivial or short content. | [optional] |
| **incoherent** | **Float** | Difficult to understand, nonsensical. | [optional] |
| **spam** | **Float** | Irrelevant and unsolicited commercial content. | [optional] |
| **neutral** | **Float** |  | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfQualityLabelScores.new(
  unsubstantial: null,
  incoherent: null,
  spam: null,
  neutral: null
)
```

