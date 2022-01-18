#!/bin/bash

docker build . -t fabwice/docker-endlessh --no-cache


docker push fabwice/docker-endlessh:latest
