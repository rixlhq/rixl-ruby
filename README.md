# rixl-ruby

Ruby client for the [RIXL](https://rixl.com) API.

## Install

```ruby
gem "rixl-ruby"
```

```bash
bundle install
```

Requires Ruby 3.0+.

## Quick start

```ruby
require "rixl_sdk"

client = RixlSdk::RixlClient.new(adapter)
image = client.images.by_image_id("PS5IMKoFLm").get
puts image.id
```

## Issues

[github.com/rixlhq/rixl-ruby/issues](https://github.com/rixlhq/rixl-ruby/issues)
