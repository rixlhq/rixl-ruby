Gem::Specification.new do |spec|
  spec.name          = "rixl-ruby"
  spec.version       = "0.0.0"
  spec.summary       = "Kiota-generated Ruby SDK for RIXL."
  spec.description   = "Kiota-generated Ruby SDK for RIXL."
  spec.authors       = ["RIXL"]
  spec.email         = ["support@rixl.com"]
  spec.files         = Dir.glob("{*.rb,feeds/**/*.rb,images/**/*.rb,videos/**/*.rb,models/**/*.rb}")
  spec.require_paths = ["."]

  spec.add_runtime_dependency "microsoft_kiota_abstractions", "0.14.4"
  spec.add_runtime_dependency "microsoft_kiota_faraday", "0.15.0"
  spec.add_runtime_dependency "microsoft_kiota_serialization_json", "0.9.1"
end
