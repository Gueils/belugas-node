# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'belugas/node/version'

Gem::Specification.new do |spec|
  spec.name          = "belugas-node"
  spec.version       = Belugas::Node::VERSION
  spec.authors       = ["Miguel Alfredo Garcia Baca"]
  spec.email         = ["weare@icalialabs.com"]

  spec.summary       = %q{A Ruby CLI for node js feature detection}
  spec.description   = %q{A Ruby CLI for node js feature detection using awesome Belugas}
  spec.homepage      = "https://github.com/icalialabs/belugas-node"
  spec.license       = "MIT"

  spec.bindir        = "bin"
  spec.executables   = ["belugas-node"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19"
  spec.add_dependency "bundler", "~> 1.13"

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
