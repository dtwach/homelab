#!/bin/bash

# Stop services
for service in services/*; do
  docker compose -f $service/docker-compose.yml down
done
docker compose -f proxy/docker-compose.yml down

echo "All services are down!"