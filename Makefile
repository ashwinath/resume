FILE_NAME = resume.tex

all: clean build

build:
	@docker run \
		--rm \
		-ti \
		-v $(pwd):/data \
		ghcr.io/ashwinath/xelatex-compiler:v0.0.1 \
		cd /data; xelatex ashwin.tex

clean:
	@rm -f ashwin.aux ashwin.log ashwin.pdf ashwin.out
