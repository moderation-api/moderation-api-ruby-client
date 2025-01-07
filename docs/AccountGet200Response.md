# ModerationApi::AccountGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **paid_plan_name** | **String** |  |  |
| **text_api_quota** | **Float** |  |  |
| **remaining_quota** | **Float** |  |  |
| **current_project** | [**AccountGet200ResponseCurrentProject**](AccountGet200ResponseCurrentProject.md) |  | [optional] |

## Example

```ruby
require 'moderation_api'

instance = ModerationApi::AccountGet200Response.new(
  id: null,
  paid_plan_name: null,
  text_api_quota: null,
  remaining_quota: null,
  current_project: null
)
```

