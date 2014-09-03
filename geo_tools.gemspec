# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'geo_tools'
  s.version     = '0.1'
  s.authors     = ['Andy Stewart']
  s.email       = ['boss@airbladesoftware.com']
  s.homepage    = 'https://github.com/airblade/geo_tools'
  s.summary     = 'Easierusing latitudes and longitudes on forms (and validation in model) for Rals 2.3.'
  s.description = s.summary

  s.rubyforge_project = 'geo_tools'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails'

  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'shoulda-context', '~> 1.0.0'
end
