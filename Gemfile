# frozen_string_literal: true

source "https://rubygems.org"
gemspec

gem 'jekyll'

group :jekyll_plugins do

    # Functionality Enhancement
    gem 'jekyll-seo-tag'        # Add SEO tags to your site. Use by including `{% seo %}` in your head.html.

    # Content Handling
    gem 'jekyll-feed'           # Generates Atom feed; include `{% feed_meta %}` in head.html and configures feed path in _config.yml.

    # Performance Optimization
    gem 'jekyll-sitemap'        # Generates sitemap.xml; auto-created at /sitemap.xml, no additional configuration needed.

end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
    gem 'tzinfo'  # Assuming the use of the latest compatible version
    gem 'tzinfo-data'  # This should match the latest available version or the one compatible with your needs
end

# Performance-booster for watching directories on Windows
gem 'wdm', :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem 'http_parser.rb', :platforms => [:jruby]

# Development dependencies, common across all platforms
group :development do
    gem 'rake'
    gem 'bundler'
end