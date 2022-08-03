
SERVICE_NAME:=node_app
build:
	docker-compose -f docker-compose.dev.yml build --no-cache
up:
	docker-compose -f docker-compose.dev.yml up

down: 
	docker-compose -f docker-compose.dev.yml down $(SERVICE_NAME)

destroy: 
	docker-compose -f docker-compose.dev.yml down

bash: 
	docker-compose exec $(SERVICE_NAME) bash -c "$(BASH)"

up-prod:
	docker-compose up -d