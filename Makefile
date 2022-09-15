.PHONY: install
install:
	bundle install

.PHONY: test
test:
	bundle exec rspec spec

.PHONY: console
console:
	bin/console
