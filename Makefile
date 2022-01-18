.PHONY: all build serve push

NAME := iamlynnmckay

all: build serve

build:
	bundle update && \
	bundle install && \
	gem update jekyll-theme-$(NAME).gemspec
	gem build jekyll-theme-$(NAME).gemspec && \
	gem install jekyll-theme-$(NAME)

serve: build
	ln -sf "$${PWD}/_test/_posts" "$${PWD}/_posts" && \
	ln -sf "$${PWD}/_test/404.markdown" "$${PWD}/404.markdown" && \
	ln -sf "$${PWD}/_test/about.markdown" "$${PWD}/about.markdown" && \
	ln -sf "$${PWD}/_test/index.markdown" "$${PWD}/index.markdown" && \
	bundle exec jekyll serve
