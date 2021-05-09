GOLAND_DIR=./goland/src/
BINARY_NAME=main.out


run:
	@docker-compose up -d

clean:
	go clean

clean-docker:
	@docker-compose down
	@docker volume rm $(shell docker volume ls -q)
