# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-staging"
  spec.version       = "1.0.6"
  spec.authors       = ["Matt Gemmell"]
  spec.email         = ["matt@mattgemmell.com"]
  spec.summary       = %q{Stage and unstage draft posts in Jekyll.}
  spec.homepage      = "https://github.com/mattgemmell/Jekyll-Staging"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
