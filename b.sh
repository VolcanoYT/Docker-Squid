#!/bin/bash
docker build -t "repo.volcanoyt.com/squid-alpine:last" -f Dockerfile .
docker push repo.volcanoyt.com/squid-alpine:last