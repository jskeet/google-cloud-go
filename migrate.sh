#!/bin/bash

set -e

chmod -x $(find . -name '*.go')
goimports -w .
grep '//go:build ignore' -l $(find . -name '*_grpc.pb.go') | xargs rm
