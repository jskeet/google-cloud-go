#!/bin/bash

set -e

chmod -x $(find . -name '*.go')
goimports -w .
sed -i -E 's/Copyright [0-9]+/Copyright 2025/g' $(find . -name version.go)
grep '//go:build ignore' -l $(find . -name '*.go') | xargs rm
