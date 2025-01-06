# ModerationAPI::ModerationText200ResponseAllOfWordlistsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | The flagging mode. |  |
| **flagged** | **Boolean** | Whether the wordlists flagged the content. |  |
| **name** | **String** | The name of the wordlist |  |
| **id** | **String** | The ID of the wordlist |  |
| **score** | **Float** | The score of the wordlist |  |
| **found** | **Boolean** | Whether a match was found or not. | [optional] |
| **matches** | **Array&lt;String&gt;** | The matches of the entity matcher. | [optional] |
| **components** | **Object** | The components of the matcher. | [optional] |
| **error** | **String** | Indicates an error with the matcher. | [optional] |
| **warning** | **String** | Indicates a warning from the model, e.g. if the text is too short or long and the model might not be accurate. | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200ResponseAllOfWordlistsInner.new(
  mode: null,
  flagged: null,
  name: null,
  id: null,
  score: null,
  found: null,
  matches: null,
  components: null,
  error: null,
  warning: null
)
```

