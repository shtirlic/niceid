# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "niceid/version"

Gem::Specification.new do |s|
  s.name        = "niceid"
  s.version     = NiceId::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Serg Podtynnyi"]
  s.email       = ["serg.podtynnyi@gmail.com"]
  s.homepage    = "https://github.com/shtirlic/#{s.name}"
  s.summary     = %q{Nice ID Generator with checksum check.}
  s.description = %q{Simple to remember and safe for handwriting, letters and numbers based ID.}

  s.add_development_dependency "rspec", "~> 2.3"
  s.add_development_dependency "backports", ">= 2.0"
  s.add_development_dependency "rake"

  s.executables = "niceid"
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
