lint: ## Fail when the linter catches an error
	@golangci-lint run

build: lint ## Generate the website from the markdown and configuration files in the directory dist/
	@hugo
	@go build -o awesome-api

run: ## Run the application in background by executing the binary awesome-api
	@./awesome-api >./awesome-api.log 2>&1 &

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	@hugo new posts/$(POST_NAME).md
	@echo "---\
	title: '$(POST_TITLE)'\
	date: $(date +"%Y-%m-%dT%H:%M:%S%z")\
	---" > content/posts/$(POST_NAME).md

stop: ## Stop the application with the command kill XXXXX where XXXXX is the Process ID of the application
	@pkill awesome-api

clean: ## Cleanup the content of the directory dist/ and awesome-api/awesome-api.log files
	@rm -rf dist
	@rm -f awesome-api awesome-api.log

test: ## Test it to ensure that it behaves as expected
	@curl http://localhost:9999
	@curl http://localhost:9999/health

help: ## Show this help usage
	@awk -F ': ' '/^[^#].*: /{printf "  %-15s%s\n", $$1, $$2}' $(MAKEFILE_LIST)

unit-tests: ## Execute the Golang unit tests
	@go test -v -short -coverprofile=coverage-units.out