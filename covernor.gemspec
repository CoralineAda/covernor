# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'covernor/version'

Gem::Specification.new do |spec|
  spec.name          = "covernor"
  spec.version       = Covernor::VERSION
  spec.authors       = ["Coraline Ada Ehmke"]
  spec.email         = ["coraline@idolhands.com"]
  spec.summary       = %q{Ensure complete test coverage.}
  spec.description   = %q{The Covernor ensures that your test coverage stays at 100%!}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "simplecov"
end
