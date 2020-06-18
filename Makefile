.PHONY: build run

build:
	docker build -t disable-thp:local .

run: build
	docker run -it --privileged --pid=host --rm disable-thp:local
