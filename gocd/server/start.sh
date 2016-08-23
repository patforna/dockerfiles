#!/usr/bin/env bash
set -e

# tidy up (because we only want one server running on port 8153)
docker kill go-server &> /dev/null
docker rm go-server &> /dev/null

docker run -d --name go-server -p 8153:8153 patforna/go-server
