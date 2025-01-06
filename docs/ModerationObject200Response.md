# ModerationAPI::ModerationObject200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Success if the request was successful |  |
| **request** | [**ModerationText200ResponseAllOfRequest**](ModerationText200ResponseAllOfRequest.md) |  |  |
| **flagged** | **Boolean** | Whether the content was flagged by any models |  |
| **unicode_spoofing** | **Boolean** | Whether the content is using look-alike characters. Often used by spammers. |  |
| **data_found** | **Boolean** | Whether any entity matchers found data for the content |  |
| **labels** | [**Array&lt;ModerationObject200ResponseAllOfLabelsInner&gt;**](ModerationObject200ResponseAllOfLabelsInner.md) | The scores of each label |  |
| **entities** | [**Array&lt;ModerationObject200ResponseAllOfEntitiesInner&gt;**](ModerationObject200ResponseAllOfEntitiesInner.md) | The entities found in the content |  |
| **fields** | [**Array&lt;ModerationObject200ResponseAllOfFieldsInner&gt;**](ModerationObject200ResponseAllOfFieldsInner.md) | The fields in the object and their flags |  |
| **content_id** | **String** | The ID of the content. Only returned if the content was stored. | [optional] |
| **wordlists** | [**Array&lt;ModerationText200ResponseAllOfWordlistsInner&gt;**](ModerationText200ResponseAllOfWordlistsInner.md) | The wordlist entity matcher outputs if enabled in your project. Read more at https://docs.moderationapi.com/models/word | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationObject200Response.new(
  status: null,
  request: null,
  flagged: null,
  unicode_spoofing: null,
  data_found: null,
  labels: null,
  entities: null,
  fields: null,
  content_id: null,
  wordlists: null
)
```

