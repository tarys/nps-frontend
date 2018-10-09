#!/bin/bash

curl -X POST \
  http://localhost:8083/connectors \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -H 'Postman-Token: 556ef0b3-4f68-4666-a0e2-05177d546adb' \
  -d '{
  "name": "nps-elasticsearch-sink",
  "config": {
    "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
    "connection.url": "http://elasticsearch:9200",
    "topics": "nps",
    "type.name": "nps",
    "tasks.max": 1,
    "key.ignore": "true",
    "value.ignore": "true",
    "schema.ignore": "true"
  }
}'