# ModerationAPI::ModerationText200ResponseAllOfName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | The detection mode. | [optional] |
| **found** | **Boolean** | Whether a match was found or not. | [optional] |
| **matches** | **Array&lt;String&gt;** | The matches of the entity matcher. | [optional] |
| **components** | **Object** | The components of the matcher. | [optional] |
| **error** | **String** | Indicates an error with the matcher. | [optional] |
| **warning** | **String** | Indicates a warning from the model, e.g. if the text is too short or long and the model might not be accurate. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfName.new(
  mode: null,
  found: null,
  matches: null,
  components: null,
  error: null,
  warning: null
)
```

