# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery-drag-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Charles Lowell"]
  gem.email         = ["cowboyd@thefrontside.net"]
  gem.description   = %q{Use jquery-drag special events in rails}
  gem.summary       = %q{Adds dragstart, drag, dragend events to any element}
  gem.homepage      = "https://github.com/thefrontside/jquery-drag-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jquery-drag-rails"
  gem.require_paths = ["lib"]
  gem.version       = Jquery::Drag::Rails::VERSION
end
