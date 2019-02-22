NAME := umiyosh/errorproxy
DOCKER_TAG := v1.0

.PHONY: build
build:
	docker build -t $(NAME) .

.PHONY: push
push: build
	docker push $(NAME)

.PHONY: build-tag
build-tag:
	docker build -t $(NAME):latest -t $(NAME):$(DOCKER_TAG) .

.PHONY: push-tag
push-tag: build-tag
	docker push $(NAME):latest
	docker push $(NAME):$(DOCKER_TAG)


.PHONY: deploy-clean
deploy-clean:
	kubectl delete deployment errorproxy
	kubectl delete deployment hello-app

.PHONY: deploy-init
deploy-init:
	kubectl create -f ./manifest/dep.yaml
	kubectl create -f ./manifest/dep-hello.yaml

.PHONY: deploy-errorproxy
deploy-errorproxy:
	kubectl delete deployment errorproxy
	kubectl create -f ./manifest/dep.yaml


.PHONY: deploy-helloapp
deploy-helloapp:
	kubectl delete deployment hello-app
	kubectl create -f ./manifest/dep-hello.yaml

