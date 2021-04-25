GOLAND_DIR=./goland/src/
BINARY_NAME=main.out

build: create-volume
	@docker-compose build
	go build -o ${GOLAND_DIR}${BINARY_NAME} ${GOLAND_DIR}main.go

create-volume:
	@docker volume create --name postgres_data 

run:
	@docker-compose run -d
	./${GOLAND_DIR}${BINARY_NAME}

clean:
	go clean
	rm ${BINARY_NAME}

