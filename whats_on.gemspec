# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whats_on/version'

Gem::Specification.new do |spec|
  spec.name          = "whats_on"
  spec.version       = WhatsOn::VERSION
  spec.authors       = ["marcelgalang"]
  spec.email         = ["marcelgalang@gmail.com"]

  spec.summary       = %q{CLI app to see whats on TV tonight.}
  spec.description   = %q{Flatiron Shcool project for a CLI Data scraping gem}
  spec.homepage      = "http://github.com/marcelgalang."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
  spec.add_dependency "pry"
end
