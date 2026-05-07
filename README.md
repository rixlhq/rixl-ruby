# Rixl

Ruby client for the [RIXL](https://rixl.com) API.

[![Gem Version](https://img.shields.io/gem/v/rixl.svg)](https://rubygems.org/gems/rixl)

## Install

```bash
gem install rixl
```

Or in a `Gemfile`:

```ruby
gem "rixl"
```

Requires Ruby 3.0+. The Kiota Ruby runtime (`microsoft_kiota_abstractions`, `microsoft_kiota_faraday`, `microsoft_kiota_serialization_json`) is pulled in transitively.

## Quick start

```ruby
require "rixl_client"
require "microsoft_kiota_abstractions"
require "microsoft_kiota_faraday"

auth = MicrosoftKiotaAbstractions::ApiKeyAuthenticationProvider.new(
  "X-API-Key",
  "YOUR_RIXL_API_KEY",
  MicrosoftKiotaAbstractions::ApiKeyAuthenticationProvider::KeyLocation::HEADER
)
adapter = MicrosoftKiotaFaraday::FaradayRequestAdapter.new(auth)
adapter.base_url = "https://api.rixl.com"

client = RixlSdk::RixlClient.new(adapter)
image = client.images.by_image_id("PS5IMKoFLm").get
puts image.id
```

## Issues

[github.com/rixlhq/rixl-ruby/issues](https://github.com/rixlhq/rixl-ruby/issues)
