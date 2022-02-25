all: clean build

build:
	@docker run \
		--rm \
		-v $(shell pwd):/data \
		test-image \
		xelatex /data/ashwin.tex

clean:
	@rm -f ashwin.aux ashwin.log ashwin.pdf ashwin.out
