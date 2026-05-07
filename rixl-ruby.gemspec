Gem::Specification.new do |spec|
  spec.name          = "rixl-ruby"
  spec.version       = "0.0.0"
  spec.summary       = "Ruby client for the RIXL API."
  spec.description   = "Ruby client for the RIXL API."
  spec.authors       = ["RIXL"]
  spec.email         = ["support@rixl.com"]
  spec.files         = Dir.glob("sdk/{*.rb,feeds/**/*.rb,images/**/*.rb,videos/**/*.rb,models/**/*.rb}")
  spec.require_paths = ["sdk"]

  spec.add_runtime_dependency "microsoft_kiota_abstractions", "0.15.1"
  spec.add_runtime_dependency "microsoft_kiota_faraday", "0.16.0"
  spec.add_runtime_dependency "microsoft_kiota_serialization_json", "0.10.0"
end
