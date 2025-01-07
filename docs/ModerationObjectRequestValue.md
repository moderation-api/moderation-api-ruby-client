# ModerationApi::ModerationObjectRequestValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of the object you want to analyze. |  |
| **data** | [**Hash&lt;String, ModerationObjectRequestValueDataValue&gt;**](ModerationObjectRequestValueDataValue.md) |  |  |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::ModerationObjectRequestValue.new(
  type: null,
  data: null
)
```

