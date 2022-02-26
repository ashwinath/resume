all: clean build

build:
	@docker run \
		--rm \
		-v $(shell pwd):/data \
		ghcr.io/ashwinath/xelatex-compiler:v0.0.1 \
		xelatex /data/ashwin.tex

clean:
	@rm -f ashwin.aux ashwin.log ashwin.pdf ashwin.out
