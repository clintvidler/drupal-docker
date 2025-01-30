up: 
	docker compose up -d database drupal
down: 
	docker compose down;
build: 
	docker compose up -d --build database drupal;
logs:
	docker compose logs -f drupal;
bash:
	docker exec -it drupal-docker-drupal /bin/bash
phpmyadmin:
	docker compose up -d phpmyadmin
