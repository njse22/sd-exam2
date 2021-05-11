default_target: build run

create-volume:
	@docker volume create --name postgres_data 

build: create-volume
	@docker-compose build

run:
	@docker-compose up

clean:
	@docker-compose down
	@docker volume rm $(shell docker volume ls -q) 
