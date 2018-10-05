all: clean lint

clean:
	rm -rf .kitchen
	rm -f *.retry

lint:
	bundle exec rubocop -ES
	ansible-lint -pv . tests/test.yml
	ansible-review -c ./tests/ansible-review.cfg \
	  tests/test.yml
