
SERVICE_NAME:=node-app
build:
	docker-compose -f docker-compose.dev.yml build $(SERVICE_NAME) --no-cache
up:
	docker-compose -f docker-compose.dev.yml up $(SERVICE_NAME) --build

down: 
	docker-compose -f docker-compose.dev.yml down $(SERVICE_NAME)

destroy: 
	docker-compose -f docker-compose.dev.yml down

bash: 
	docker-compose exec $(SERVICE_NAME) bash -c "$(BASH)"

up-prod:
	docker-compose up -d