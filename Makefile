all: clean lint

clean:
	rm -rf .kitchen
	rm -f *.retry

lint:
	bundle exec rubocop -ES
