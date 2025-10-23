#!/bin/bash

# Stop services
for service in services/*; do
  docker compose -f $service/docker-compose.yml pull
done
docker compose -f proxy/docker-compose.yml pull

echo "All services are updated!"