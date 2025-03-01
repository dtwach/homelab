#!/bin/bash

# Start services
docker compose -f proxy/docker-compose.yml up -d
for service in services/*; do
  docker compose -f $service/docker-compose.yml up -d
done

echo "All services are up and running!"