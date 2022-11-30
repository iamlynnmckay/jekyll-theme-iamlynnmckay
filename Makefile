.PHONY: all build clean push serve

NAME := iamlynnmckay
VERSION := 0.0.10

all: clean build serve

build: clean bundle

bundle:
	bundle config set --local path 'vendor/bundle' && \
	bundle update && \
	bundle install

gem: clean bundle
	gem update jekyll-theme-$(NAME).gemspec && \
	gem build jekyll-theme-$(NAME).gemspec && \
	gem install jekyll-theme-$(NAME) --user-install && \
	gem push jekyll-theme-$(NAME)-$(VERSION).gem

clean:
	gem clean && \
	rm -rf \
		*.gem \
		.bundle \
		.jekyll-cache \
		.sass-cache \
		Gemfile.lock \
		_posts \
		_site \
		assets/pages \
		assets/posts 

push: build
	git add . ; \
	git commit && \
	git push origin main

serve: build exec

exec:
	bundle exec jekyll serve
