# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "rixl"
  spec.version = "0.1.0"
  spec.authors = ["RIXL"]
  spec.email = ["support@rixl"]

  spec.summary = "Ruby client for the RIXL API."
  spec.description = "Typed Ruby client for the RIXL API — manage images, videos, and feeds."
  spec.homepage = "https://github.com/rixlhq/rixl-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata = {
    "homepage_uri"      => "https://github.com/rixlhq/rixl-ruby",
    "source_code_uri"   => "https://github.com/rixlhq/rixl-ruby",
    "bug_tracker_uri"   => "https://github.com/rixlhq/rixl-ruby/issues",
    "changelog_uri"     => "https://github.com/rixlhq/rixl-ruby/blob/main/CHANGELOG.md",
    "rubygems_mfa_required" => "true"
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ Gemfile .gitignore .gitattributes .github/ .rubocop.yml gen.sh])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "microsoft_kiota_abstractions", "0.14.4"
  spec.add_dependency "microsoft_kiota_faraday", "0.15.0"
  spec.add_dependency "microsoft_kiota_serialization_json", "0.9.1"
end
