#!/bin/bash

curl -X POST \
  http://localhost:8083/connectors \
  -H 'Content-Type: application/json' \
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