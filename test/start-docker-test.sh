#!/bin/bash
curl -X POST -H "Content-Type: application/json" http://192.168.77.11:8080/v2/apps -d@docker-test.json
