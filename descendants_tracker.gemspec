# -*- encoding: utf-8 -*-

require File.expand_path('../lib/descendants_tracker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'descendants_tracker'
  gem.version     = DescendantsTracker::VERSION.dup
  gem.authors     = [ 'Dan Kubb', 'Piotr Solnica', 'Markus Schirp' ]
  gem.email       = %w[ dan.kubb@gmail.com piotr.solnica@gmail.com mbj@seonic.net ]
  gem.description = 'Module that adds descendant tracking to a class'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/dkubb/descendants_tracker'

  gem.require_paths    = %w[lib]
  gem.files            = `git ls-files`.split($/)
  gem.test_files       = `git ls-files -- {spec}/*`.split($/)
  gem.extra_rdoc_files = %w[LICENSE README.md TODO]

  gem.add_development_dependency('rake',  '~> 10.0.2')
  gem.add_development_dependency('rspec', '~> 1.3.2')
end
