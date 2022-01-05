REGISTRY := sarlos
NAME := python
TAG := 3.9-im

all: clean build

clean:
	docker system prune -f

build:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(REGISTRY)/$(NAME):$(TAG) --push .
