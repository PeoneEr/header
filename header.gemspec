# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'header/version'

Gem::Specification.new do |spec|
  spec.name          = "header"
  spec.version       = Header::VERSION
  spec.authors       = ["PeoneEr"]
  spec.email         = ["peoneerko@yandex.ru"]

  spec.summary       = %q{Header}
  spec.description   = %q{Header}
  spec.homepage      = "http://ai-factory.com."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'compass-rails'
  spec.add_runtime_dependency 'sass-rails', '>= 3.2'
end
