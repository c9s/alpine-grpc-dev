FROM yoanlin/boost-dev:alpine-3.7

RUN apk add --no-cache libstdc++ \
 && apk add --no-cache --update git make g++ unzip autoconf automake libtool file openssl curl

ARG GRPC_VERSION=v1.12.x
RUN git clone --depth 1 --branch $GRPC_VERSION https://github.com/grpc/grpc /tmp/grpc

WORKDIR /tmp/grpc
RUN git submodule update --init --recursive
RUN (cd third_party/protobuf && ./autogen.sh && ./configure && make install)
RUN make && make install && rm -rf /tmp/grpc
