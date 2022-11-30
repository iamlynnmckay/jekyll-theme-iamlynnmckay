# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-iamlynnmckay"
  spec.version       = "0.0.10"
  spec.authors       = ["Lynn McKay"]
  spec.email         = ["iamlynnmckay@gmail.com"]

  spec.summary       = "..."
  spec.homepage      = "https://github.com/iamlynnmckay/jekyll-theme-iamlynnmckay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  #spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "github-pages"

  spec.add_runtime_dependency "jekyll-feed"#, "~> 0.9"
  # spec.add_runtime_dependency "jekyll-postcss"
  spec.add_runtime_dependency "jekyll-seo-tag"#, "~> 2.1"
  spec.add_runtime_dependency "jekyll-sitemap"

  spec.add_runtime_dependency "webrick"#, "~> 1.7"

  spec.add_development_dependency "bundler"
end
