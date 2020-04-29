build:
	cd docker && docker build \
		--target base \
		--tag registry.gitlab.com/cerezo-app/ops-cerezo/backend:latest \
		.

	cd docker && docker build \
		--target develop \
		--tag registry.gitlab.com/cerezo-app/ops-cerezo/backend:develop \
		.

push: build
	docker push \
		registry.gitlab.com/cerezo-app/ops-cerezo/backend:latest

	docker push \
		registry.gitlab.com/cerezo-app/ops-cerezo/backend:develop