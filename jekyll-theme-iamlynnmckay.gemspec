# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-iamlynnmckay"
  spec.version       = "0.1.0"
  spec.authors       = ["Lynn McKay"]
  spec.email         = ["iamlynnmckay@gmail.com"]

  spec.summary       = "..."
  spec.homepage      = "https://github.com/iamlynnmckay/jekyll-theme-iamlynnmckay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
