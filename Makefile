docker-build:
	docker build --tag=final

lint: 
	hadolint Dockerfile
	
all: lint