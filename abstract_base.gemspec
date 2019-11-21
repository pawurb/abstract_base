# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'abstract_base/version'

Gem::Specification.new do |gem|
  gem.name          = "abstract_base"
  gem.version       = AbstractBase::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["p.urbanek89@gmail.com"]
  gem.summary       = %q{ Abstract Class pattern gem for Ruby }
  gem.description   = %q{Abstract Class pattern gem for Ruby }
  gem.homepage      = "http://github.com/pawurb/abstract_base"
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = gem.files.grep(%r{^(test)/})
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "test-unit"
end
