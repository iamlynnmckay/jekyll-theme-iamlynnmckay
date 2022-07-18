.PHONY: all build clean push serve

NAME := iamlynnmckay
VERSION := 0.0.8

all: clean build serve

build: clean bundle

bundle:
	bundle update && \
	bundle install

gem: clean bundle
	gem update jekyll-theme-$(NAME).gemspec && \
	gem build jekyll-theme-$(NAME).gemspec && \
	gem install jekyll-theme-$(NAME) && \
	gem push jekyll-theme-$(NAME)-$(VERSION).gem

clean:
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

serve: build link exec

link:
	ln -sf "$${PWD}/_test/_posts" "$${PWD}/_posts" && \
	cp -rf "$${PWD}/_test/assets/posts" "$${PWD}/assets/posts" && \
	cp -rf "$${PWD}/_test/assets/pages" "$${PWD}/assets/pages"

exec:
	bundle exec jekyll serve
