# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ebird/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Carson McDonald"]
  gem.email         = ["carson@ioncannon.net"]
  gem.description   = "A simple wrapper around the Cornell eBird API"
  gem.summary       = "A simple wrapper around the Cornell eBird API"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ebird"
  gem.require_paths = ["lib"]
  gem.version       = EBird::VERSION

  gem.add_dependency "httparty"
end
