default_target: build run

build: 
	@docker-compose build

run:
	@docker-compose up

clean:
	@docker-compose down
	@docker volume rm $(shell docker volume ls -q) 
