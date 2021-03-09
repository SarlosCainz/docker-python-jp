all: clean build

clean:
	docker system prune -f

build:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t sarlos/python --push .
