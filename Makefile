up:
	-@docker network create application_app
	-@docker network create dkron_dkron
	cd docker/redis && docker-compose up -d
	cd docker/dkron && docker-compose up -d
	cd docker/application && docker-compose up --build -d
	$(MAKE) ps

log:
	cd docker/application && docker-compose logs -f

ps:
	cd docker/redis && docker-compose ps
	cd docker/dkron && docker-compose ps
	cd docker/application && docker-compose ps

down:
	cd docker/redis && docker-compose down
	cd docker/dkron && docker-compose down
	cd docker/application && docker-compose down

send-job:
	curl -X POST 127.0.0.1:8080/v1/jobs -d @jobs/$(JOB).json
