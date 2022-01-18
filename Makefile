REGISTRY := sarlos
NAME := python
TAG := 3.10

build:
	docker build -t $(REGISTRY)/$(NAME):$(TAG) .

buildx:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t $(REGISTRY)/$(NAME):$(TAG) --push .

clean:
	docker system prune -f
