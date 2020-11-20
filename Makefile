all: clean build

clean:
	docker system prune -f

build:
	docker build -t sarlos/python:3.9-pipenv .
