HUGO := hugo -d ../dist -s site -v

start: clean
	$(HUGO)w

preview: clean
	$(HUGO)w -D -F

build: clean
	$(HUGO)

clean:
	rm -fr dist && mkdir dist
