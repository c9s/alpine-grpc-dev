alpine-3.7:
	docker build -t yoanlin/grpc-dev:alpine-3.7 alpine/3.7

alpine-3.6:
	docker build -t yoanlin/grpc-dev:alpine-3.6 alpine/3.6

alpine-edge:
	docker build -t yoanlin/grpc-dev:alpine-edge alpine/edge

all: alpine-3.7 alpine-3.6 alpine-edge
	docker push yoanlin/grpc-dev
