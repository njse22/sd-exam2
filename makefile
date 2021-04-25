GOLAND_DIR=./goland/src/
BINARY_NAME=main.out

build: create-volume
	@docker-compose build

create-volume:
	@docker volume create --name postgres_data 

run:
	@docker-compose up -d

clean:
	go clean

clean-docker:
	@docker-compose down
	@docker volume rm $(shell docker volume ls -q)
