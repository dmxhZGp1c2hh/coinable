# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coinable/version'

Gem::Specification.new do |spec|
  spec.name          = 'coinable'
  spec.version       = Coinable::VERSION
  spec.author        = 'Vlad D'
  spec.email         = 'dmxhZGp1c2hh@yandex.ru'

  spec.summary       = 'Communicate with Bitcoin, Litecoin, Emercoin and other Altcoin JSON RPC the Ruby way'
  spec.homepage      = 'https://github.com/dmxhZGp1c2hh/coinable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'httparty', '~> 0.13.7'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'faker', '~> 1.6'
end
