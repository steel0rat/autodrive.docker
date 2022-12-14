#!/usr/bin/env bash
sudo docker rm autodrivedocker_api_1 autodrivedocker_web_1 autodrivedocker_db_1 --force
sudo docker-compose -f docker-compose.yml -f build.yml build --no-cache
sudo docker-compose -f docker-compose.yml -f build.yml up -d
sleep 10s
sudo docker exec -ti autodrivedocker_api_1 php artisan migrate