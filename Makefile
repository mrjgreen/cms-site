HUGO := hugo -d ../dist -s site -v

start: clean
	$(HUGO) server

build: clean
	$(HUGO)

clean:
	rm -fr dist && mkdir dist
