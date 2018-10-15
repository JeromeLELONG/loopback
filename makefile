start: ## Start the client and server in docker for local development
	docker-compose up --build

start-prod: ## Start the client and server in docker for local development
	docker-compose -f docker-compose-production.yml  up --build

run:
	docker-compose up
stop: ## Start the client and server in docker for local development
	docker-compose down

install-node:
	docker-compose run --rm --no-deps node bash -ci 'npm cache clean -f && npm install --force'

install:  install-node