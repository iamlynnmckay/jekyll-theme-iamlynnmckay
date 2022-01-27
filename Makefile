.PHONY: all build clean push serve

NAME := iamlynnmckay

all: clean build serve

build: clean bundle

bundle:
	bundle update && \
	bundle install

gem: 
	gem update jekyll-theme-$(NAME).gemspec && \
	gem build jekyll-theme-$(NAME).gemspec && \
	gem install jekyll-theme-$(NAME)

clean:
	rm -rf \
		.bundle \
		.jekyll-cache \
		.sass-cache \
		_site \
		Gemfile.lock \
		*.gem \
		_posts \
		_pages \
		*.markdown \
		assets/posts \
		assets/pages

push: build
	git add . ; \
	git commit && \
	git push origin main

serve: build link exec

link:
	ln -sf "$${PWD}/_test/_pages" "$${PWD}/_pages" && \
	ln -sf "$${PWD}/_test/_posts" "$${PWD}/_posts" && \
	ln -sf "$${PWD}/_test/404.markdown" "$${PWD}/404.markdown" && \
	ln -sf "$${PWD}/_test/index.markdown" "$${PWD}/index.markdown" && \
	cp -rf "$${PWD}/_test/assets/posts" "$${PWD}/assets/posts" && \
	cp -rf "$${PWD}/_test/assets/pages" "$${PWD}/assets/pages"

exec:
	bundle exec jekyll serve
