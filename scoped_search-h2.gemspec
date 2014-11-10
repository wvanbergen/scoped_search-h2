# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scoped_search/h2/version'

Gem::Specification.new do |spec|
  spec.name          = "scoped_search-h2"
  spec.version       = ScopedSearch::H2::VERSION
  spec.authors       = ["Willem van Bergen"]
  spec.email         = ["willem@railsdoctors.com"]
  spec.summary       = %q{H2 support for scoped_search}
  spec.description   = %q{This gem contains an H2 adapter for scoped search query builder, to obtain better search results on H2 databases.}
  spec.homepage      = "https://github.com/wvanbergen/scoped_search"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "scoped_search", ">= 2.7"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
