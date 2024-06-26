
THEME := jekyll-theme-iamlynnmckay.github.io
VERSION := $(shell cat $(THEME).gemspec | grep '\.version\s' | grep -o '[0-9]\.[0-9\.]*')

.PHONY: all
all: serve

.PHONY:
version:
	echo $(VERSION)

.PHONY: build-site
build-site:
	bundle config set --local path 'vendor/bundle'; \
	bundle update --verbose; \
	bundle install --verbose; \
	bundle exec jekyll build --verbose;

.PHONY: build-theme
build-theme: 
	echo $(VERSION); \
	gem update $(THEME).gemspec --verbose; \
	gem build $(THEME).gemspec --verbose;

.PHONY: build
build: build-theme build-site

.PHONY: serve
serve: build
	bundle config set --local path 'vendor/bundle' --verbose; \
	bundle exec jekyll serve --verbose;

.PHONY: install
install: clean build
	gem install ./$(THEME)-$(VERSION).gem --user-install --verbose;

.PHONY: clean
clean:
	rm -rf $$(echo $$(cat .gitignore | grep -v '#'));

.PHONY: publish
publish: sync install 
	gem push $(THEME)-$(VERSION).gem --verbose;

.PHONY: sync
sync:
	git fetch; \
	if [[ -n $$(git status --porcelain) ]]; then \
	echo "There are changes to be committed, changes not staged for commit, or untracked files."; \
	exit 1; \
	fi; \
	local_commits=$$(git rev-list HEAD ^origin/$$(git symbolic-ref --short HEAD)); \
	if [[ -n "$$local_commits" ]]; then \
	echo "Your branch is ahead of the remote."; \
	exit 1; \
	fi; \
	remote_commits=$$(git rev-list origin/$$(git symbolic-ref --short HEAD) ^HEAD); \
	if [[ -n "$$remote_commits" ]]; then \
	echo "Your branch is behind the remote."; \
	exit 1; \
	fi;
