# Simple Images

build: simple-fbc simple-bundle

.PHONY: simple-fbc
simple-fbc:
	docker build -t quay.io/tshort/simple-fbc:latest simple-fbc

.PHONY: simple-bundle
simple-bundle:
	docker build -t quay.io/tshort/simple-bundle:v0.0.1 simple-bundle

push: push-simple-fbc push-simple-bundle

.PHONY: push-simple-fbc
push-simple-fbc: simple-fbc
	docker push quay.io/tshort/simple-fbc:latest

.PHONY: push-simple-bundle
push-simple-bundle: simple-bundle
	docker push quay.io/tshort/simple-bundle:v0.0.1
