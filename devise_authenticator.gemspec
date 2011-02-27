# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise_authenticator/version"

Gem::Specification.new do |s|
  s.name        = "devise_authenticator"
  s.version     = DeviseAuthenticator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Douglas Campos"]
  s.email       = ["qmx@qmx.me"]
  s.homepage    = ""
  s.summary     = %q{mimics devise's default hashing strategy}
  s.description = %q{helps to authenticate against a default devise database}

  s.rubyforge_project = "devise_authenticator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
