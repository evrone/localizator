# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'localizator/version'

Gem::Specification.new do |gem|
  gem.name          = "localizator"
  gem.version       = Localizator::VERSION
  gem.authors       = ["Accessd"]
  gem.email         = ["accessd0@gmail.com"]
  gem.summary       = %q{This plugin provides two simple rake tasks to help keeping tranlations in sync with the default locale.}

  gem.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
