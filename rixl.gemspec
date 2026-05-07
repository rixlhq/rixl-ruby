Gem::Specification.new do |spec|
  spec.name          = "rixl"
  spec.version       = "0.0.0"
  spec.summary       = "Ruby client for the RIXL API."
  spec.description   = "Typed Ruby client for the RIXL API — manage images, videos, and feeds."
  spec.homepage      = "https://github.com/rixlhq/rixl-ruby"
  spec.license       = "MIT"
  spec.authors       = ["RIXL"]
  spec.email         = ["support@rixl.com"]
  spec.required_ruby_version = ">= 3.0"

  spec.metadata = {
    "homepage_uri"      => "https://github.com/rixlhq/rixl-ruby",
    "source_code_uri"   => "https://github.com/rixlhq/rixl-ruby",
    "bug_tracker_uri"   => "https://github.com/rixlhq/rixl-ruby/issues",
    "changelog_uri"     => "https://github.com/rixlhq/rixl-ruby/blob/main/CHANGELOG.md",
    "rubygems_mfa_required" => "true"
  }
  spec.files         = Dir.glob("sdk/{*.rb,feeds/**/*.rb,images/**/*.rb,videos/**/*.rb,models/**/*.rb}")
  spec.require_paths = ["sdk"]

  spec.add_runtime_dependency "microsoft_kiota_abstractions", "0.14.4"
  spec.add_runtime_dependency "microsoft_kiota_faraday", "0.15.0"
  spec.add_runtime_dependency "microsoft_kiota_serialization_json", "0.9.1"
end
