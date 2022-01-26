.PHONY: all build clean push serve

NAME := iamlynnmckay

all: clean build serve

build: clean
	bundle update && \
	bundle install && \
	gem update jekyll-theme-$(NAME).gemspec
	gem build jekyll-theme-$(NAME).gemspec && \
	gem install jekyll-theme-$(NAME)

clean:
	rm -rf ./_posts ./*.markdown ./assets/posts _pages _site

push: build
	git add . ; \
	git commit && \
	git push origin main

serve: build
	ln -sf "$${PWD}/_test/_pages" "$${PWD}/_pages" && \
	ln -sf "$${PWD}/_test/_posts" "$${PWD}/_posts" && \
	ln -sf "$${PWD}/_test/404.markdown" "$${PWD}/404.markdown" && \
	ln -sf "$${PWD}/_test/about.markdown" "$${PWD}/about.markdown" && \
	ln -sf "$${PWD}/_test/index.markdown" "$${PWD}/index.markdown" && \
	ln -sf "$${PWD}/_test/blog.markdown" "$${PWD}/blog.markdown" && \
	ln -sf "$${PWD}/_test/assets/posts" "$${PWD}/assets/posts" && \
	bundle exec jekyll serve
