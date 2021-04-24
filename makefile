build:
	@docker volume create --name postgres_data 
	@docker-compose up
