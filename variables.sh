#!/bin/bash -e

BUILDS=("protoc-all" "protoc" "prototool" "grpc-cli" "gen-grpc-gateway")
DOCKER_REPO=${DOCKER_REPO}
NAMESPACE=${NAMESPACE:-streamlayer}
CONTAINER=${DOCKER_REPO}${NAMESPACE}
LATEST=${1:false}

DEBIAN_VERSION=${DEBIAN_VERSION:-bullseye}
GO_VERSION=${GO_VERSION:-1.17}
GRPC_VERSION=${GRPC_VERSION:-1.49}
GRPC_JAVA_VERSION=${GRPC_JAVA_VERSION:-1.49}
GRPC_WEB_VERSION=${GRPC_WEB_VERSION:-1.4.1}
GRPC_GATEWAY_VERSION=${GRPC_GATEWAY_VERSION:-v2.0.1}
PROTOBUF_JS_VERSION=${PROTOBUF_JS_VERSION:-v3.21.0}
UBER_PROTOTOOL_VERSION=${UBER_PROTOTOOL_VERSION:-1.10.0}
SCALA_PB_VERSION=${SCALA_PB_VERSION:-0.11.0}
MYPY_VERSION=${MYPY_VERSION:-3.3.0}
NODE_VERSION=${NODE_VERSION:-18}
NODE_GRPC_TOOLS_NODE_PROTOC_TS_VERSION=${NODE_GRPC_TOOLS_NODE_PROTOC_TS_VERSION:-5.3.2}
NODE_GRPC_TOOLS_VERSION=${NODE_GRPC_TOOLS_VERSION:-1.11.3}
NODE_PROTOC_GEN_GRPC_WEB_VERSION=${NODE_PROTOC_GEN_GRPC_WEB_VERSION:-1.4.0}
TS_PROTO_VERSION=${TS_PROTO_VERSION:-1.126.1}
GO_ENVOYPROXY_PGV_VERSION=${GO_ENVOYPROXY_PGV_VERSION:-0.6.13}
GO_MWITKOW_GPV_VERSION=${GO_MWITKOW_GPV_VERSION:-0.3.2}
GO_PROTOC_GEN_GO_VERSION=${GO_PROTOC_GEN_GO_VERSION:-v1.28.1}
GO_PROTOC_GEN_GO_GRPC_VERSION=${GO_PROTOC_GEN_GO_GRPC_VERSION:-v1.2.0}
BUILD_VERSION="${BUILD_VERSION:-local}"
VERSION="${VERSION:-${GRPC_VERSION}_${BUILD_VERSION}}"
