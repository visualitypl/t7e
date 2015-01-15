# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 't7e/version'

Gem::Specification.new do |spec|
  spec.name          = "t7e"
  spec.version       = T7e::VERSION
  spec.authors       = ["Mariusz Koziel"]
  spec.email         = ["m.koziel@visuality.pl"]
  spec.summary       = "t7e"
  spec.description   = "Gem to push/send translation files to your T7e server"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rest-client'
  spec.add_development_dependency 'rest_client'
end
