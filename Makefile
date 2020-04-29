build:
	cd docker && docker build \
		--target base \
		--tag labtrendig/backend:latest \
		.

	cd docker && docker build \
		--target develop \
		--tag labtrendig/backend:develop \
		.

.PHONY: backend
backend:
	docker-compose run --rm --service-ports --use-aliases backend --shell
