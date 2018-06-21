FROM yoanlin/alpine-boost-dev:3.6

RUN apk add --no-cache libstdc++ \
 && apk add --no-cache --update git make g++ unzip autoconf automake libtool file openssl curl

ARG GRPC_VERSION=v1.12.x
RUN git clone --depth 1 --branch $GRPC_VERSION https://github.com/grpc/grpc /tmp/grpc
# COPY grpc /tmp/grpc
RUN (cd /tmp/grpc \
    && git submodule update --init --recursive \
    && (cd third_party/protobuf && ./autogen.sh && ./configure && make install) \
    && make \
    && make install \
    ) && rm -rf /tmp/grpc
