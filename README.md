# Moderation API Ruby library

The Moderation API Ruby library provides convenient access to the Moderation API from applications written in Ruby.

Use the Moderation API to analyze text and images for offensive content, profanity, toxicity, discrimination, sentiment, language and more - or detect, hide, and extract data entities like emails, phone numbers, addresses and more.

## Documentation

See the [Moderation API docs](https://docs.moderationapi.com) for Ruby.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'moderation_api'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install moderation_api
```

## Usage

The package needs to be configured with your project's API key, which is
available in your [Project Dashboard](https://moderationapi.com/app/projects). Configure the client with your key:

```ruby
require 'moderation_api'

ModerationApi.configure do |config|
  config.access_token = 'proj_...'
end

api = ModerationApi::ModerateApi.new

begin
  analysis = api.moderation_text({value: 'Hello world!'})
  puts analysis.flagged
rescue ModerationApi::ApiError => e
  puts "Error: #{e}"
end
```

### Webhook signing

Moderation API can optionally sign the webhook events it sends to your endpoint, allowing you to validate that they were not sent by a third-party. You can read more about it [here](https://docs.moderationapi.com/review-queues/webhooks).

Here's an example using Rails:

```ruby
class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    payload = request.body.read
    sig_header = request.env['HTTP_MODAPI_SIGNATURE']

    begin
      event_data = ModerationApi::Webhook.construct_event(
        payload, sig_header, ENV['MODAPI_WEBHOOK_SECRET']
      )
    rescue JSON::ParserError => e
      return render plain: "Invalid payload: #{e}", status: 400
    rescue ModerationApi::Webhook::SignatureVerificationError => e
      return render plain: "Invalid signature: #{e}", status: 400
    end

    # Handle the event
    puts "Webhook received! #{event_data[:type]}"

    head :ok
  end
end
```

## Support

New features and bug fixes are released on the latest major version of the `moderation_api` gem. If you are on an older major version, we recommend that you upgrade to the latest in order to use the new features and bug fixes including those for security vulnerabilities. Older major versions of the package will continue to be available for use, but will not be receiving any updates.

## Email support

Reach out at [support@moderationapi.com](mailto:support@moderationapi.com)

## More Information

- [REST API Reference](https://docs.moderationapi.com/api-reference/introduction)
- [Rate limits](https://docs.moderationapi.com/api-reference/rate-limits)
- [Error Handling](https://docs.moderationapi.com/api-reference/errors)
- [Documentation](https://docs.moderationapi.com/get-started/introduction)
- [Test your API key](https://docs.moderationapi.com/api-reference/authentication)
