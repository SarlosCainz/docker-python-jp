CONTAINER_NAME := python
REGISTRY := sarlos
VER := 3.10-pipenv-alpine
IMAGE := $(REGISTRY)/$(CONTAINER_NAME):$(VER)

all: clean init build

clean:
	docker system prune -f

build:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(IMAGE) --push --progress plain .

init:
	docker buildx create --use
