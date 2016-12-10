SUPPORTED_COMMANDS := npm
SUPPORTS_MAKE_ARGS := $(findstring $(firstword $(MAKECMDGOALS)), $(SUPPORTED_COMMANDS))
ifneq "$(SUPPORTS_MAKE_ARGS)" ""
  COMMAND_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(COMMAND_ARGS):;@:)
endif

install_web: ## Install web NPM dependencies
	docker-compose run --rm npm install

docker_run: ## Launch docker instances for development
	docker-compose up -d front

refresh_front: ## Restart front
	docker-compose stop front && docker-compose up -d front

logs: ## Launch docker instances
	docker-compose logs --tail=100 -f front

build: ## Compile js
	docker-compose run --rm npm run build $(COMMAND_ARGS)

npm: ## Build and start server
	docker-compose run --rm npm $(COMMAND_ARGS)
