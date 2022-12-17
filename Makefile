.PHONY: all build clean push serve

NAME := jekyll-theme-iamlynnmckay
VERSION := 0.0.11

all: clean build serve

build: clean bundle

bundle:
	bundle config set --local path 'vendor/bundle' && \
	bundle update && \
	bundle install

gem: clean bundle
	gem update $(NAME).gemspec && \
	gem build $(NAME).gemspec && \
	gem install $(NAME) --user-install && \
	gem push $(NAME)-$(VERSION).gem

clean:
	gem clean && \
	rm -rf \
		*.gem \
		.bundle \
		.jekyll-cache \
		.sass-cache \
		Gemfile.lock \
		_site

push: build
	git add . ; \
	git commit && \
	git push origin main

serve: build exec

exec:
	bundle exec jekyll serve
