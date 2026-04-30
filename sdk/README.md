# RIXL Ruby SDK

The official Ruby client for the [RIXL](https://rixl.com) API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rixl-ruby'
```

And then execute:

```bash
bundle install
```

## Quick Start

```ruby
require 'rixl-ruby'
require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_faraday'

auth = MicrosoftKiotaAbstractions::ApiKeyAuthenticationProvider.new('YOUR_API_KEY', 'X-API-Key', :header)
adapter = MicrosoftKiotaFaraday::FaradayRequestAdapter.new(auth)
client = Rixl::RixlClient.new(adapter)

image = client.images.by_image_id('PS5IMKoFLm').get.wait
puts image.id
```
