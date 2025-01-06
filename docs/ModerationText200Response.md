# ModerationAPI::ModerationText200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Success if the request was successful |  |
| **request** | [**ModerationText200ResponseAllOfRequest**](ModerationText200ResponseAllOfRequest.md) |  |  |
| **flagged** | **Boolean** | Whether the content was flagged by any models |  |
| **content_moderated** | **Boolean** | Whether the content was moderated or not. Same as &#x60;content&#x60; !&#x3D;&#x3D; &#x60;original&#x60; |  |
| **unicode_spoofing** | **Boolean** | Whether the content is using look-alike characters. Often used by spammers. |  |
| **data_found** | **Boolean** | Whether any entity matchers found data for the content |  |
| **original** | **String** | The original content |  |
| **content** | **String** | The content after moderation. With all mask replacements applied and look-alike characters replaced with the original characters. |  |
| **content_id** | **String** | The ID of the content. Only returned if the content was stored. | [optional] |
| **nsfw** | [**ModerationText200ResponseAllOfNsfw**](ModerationText200ResponseAllOfNsfw.md) |  | [optional] |
| **toxicity** | [**ModerationText200ResponseAllOfToxicity**](ModerationText200ResponseAllOfToxicity.md) |  | [optional] |
| **quality** | [**ModerationText200ResponseAllOfQuality**](ModerationText200ResponseAllOfQuality.md) |  | [optional] |
| **sentiment** | [**ModerationText200ResponseAllOfSentiment**](ModerationText200ResponseAllOfSentiment.md) |  | [optional] |
| **propriety** | [**ModerationText200ResponseAllOfPropriety**](ModerationText200ResponseAllOfPropriety.md) |  | [optional] |
| **email** | [**ModerationText200ResponseAllOfEmail**](ModerationText200ResponseAllOfEmail.md) |  | [optional] |
| **phone** | [**ModerationText200ResponseAllOfPhone**](ModerationText200ResponseAllOfPhone.md) |  | [optional] |
| **url** | [**ModerationText200ResponseAllOfUrl**](ModerationText200ResponseAllOfUrl.md) |  | [optional] |
| **address** | [**ModerationText200ResponseAllOfAddress**](ModerationText200ResponseAllOfAddress.md) |  | [optional] |
| **name** | [**ModerationText200ResponseAllOfName**](ModerationText200ResponseAllOfName.md) |  | [optional] |
| **username** | [**ModerationText200ResponseAllOfUsername**](ModerationText200ResponseAllOfUsername.md) |  | [optional] |
| **profanity** | [**ModerationText200ResponseAllOfProfanity**](ModerationText200ResponseAllOfProfanity.md) |  | [optional] |
| **sensitive** | [**ModerationText200ResponseAllOfSensitive**](ModerationText200ResponseAllOfSensitive.md) |  | [optional] |
| **wordlist** | [**ModerationText200ResponseAllOfWordlist**](ModerationText200ResponseAllOfWordlist.md) |  | [optional] |
| **wordlists** | [**Array&lt;ModerationText200ResponseAllOfWordlistsInner&gt;**](ModerationText200ResponseAllOfWordlistsInner.md) | The wordlist entity matcher outputs if enabled in your project. Read more at https://docs.moderationapi.com/models/word | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationAPI::ModerationText200Response.new(
  status: null,
  request: null,
  flagged: null,
  content_moderated: null,
  unicode_spoofing: null,
  data_found: null,
  original: null,
  content: null,
  content_id: null,
  nsfw: null,
  toxicity: null,
  quality: null,
  sentiment: null,
  propriety: null,
  email: null,
  phone: null,
  url: null,
  address: null,
  name: null,
  username: null,
  profanity: null,
  sensitive: null,
  wordlist: null,
  wordlists: null
)
```

