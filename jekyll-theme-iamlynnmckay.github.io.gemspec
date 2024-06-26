# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-iamlynnmckay.github.io"
  spec.version       = "0.1.0"
  spec.authors       = ["Lynn McKay"]
  spec.email         = [""]

  spec.summary       = "Jekyll theme for iamlynnmckay.github.io."
  spec.homepage      = "https://github.com/iamlynnmckay/jekyll-theme-iamlynnmckay"
  spec.license       = "MIT"

  spec.files = Dir[
    "LICENSE.txt", 
    "README.md",
    "_data/**/*",
    "_includes/**/*", 
    "_layouts/**/*", 
    "_pages/**/*",
    "_sass/**/*", 
    "assets/**/*", 
    "lib/**/*"
  ]
  spec.require_paths = ["lib"]
 
  # Runtime dependencies
  spec.add_runtime_dependency 'jekyll'
  spec.add_runtime_dependency 'jekyll-seo-tag'
  spec.add_runtime_dependency 'jekyll-feed'
  spec.add_runtime_dependency 'jekyll-sitemap'

  # Development dependencies
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'bundler'
end