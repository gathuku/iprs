# frozen_string_literal: true

require_relative "lib/iprs/version"

Gem::Specification.new do |spec|
  spec.name = "iprs"
  spec.version = Iprs::VERSION
  spec.authors = ["Moses Gathuku"]
  spec.email = ["mosesgathuku95@gmail.com"]

  spec.summary = "IPRS ruby client"
  spec.description = "A ruby client for IPRS web service"
  spec.homepage = "https://github.com/gathuku/iprs"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/gathuku/iprs"
  spec.metadata["changelog_uri"] = "https://github.com/gathuku/iprs/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 1.8"
  spec.add_runtime_dependency "faraday_middleware", "~> 1.1"

  spec.add_dependency "typhoeus", "~> 1.4"
  spec.add_dependency "nokogiri", "~> 1.12", ">= 1.12.5"

  spec.add_development_dependency "standardrb", "~> 1.0"
end
