# Makefile dùng để điều khiển Docker và Artisan trong dự án Laravel/Botble

# ----------------------------------
# Docker Commands
# ----------------------------------

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

restart:
	docker compose restart

# ----------------------------------
# Laravel Artisan & Composer Commands
# ----------------------------------

migrate:
	docker compose exec laravel.test php artisan migrate

bash:
	docker compose exec laravel.test sh

composer:
	docker compose exec laravel.test composer install

create-admin:
	docker compose exec laravel.test php artisan cms:user:create

cache-clear:
	docker compose exec laravel.test php artisan cache:clear

config-clear:
	docker compose exec laravel.test php artisan config:clear

route-clear:
	docker compose exec laravel.test php artisan route:clear

reset-db:
	docker compose exec laravel.test php artisan migrate:fresh --seed


# Vào bash container PHP
bash:
	docker exec -it botble-cms-main-laravel.test-1 bash

# Chạy migrate & seed trong container PHP
migrate:
	docker exec -it botble-cms-main-laravel.test-1 bash -c "php artisan migrate --seed"

# Chỉ chạy migrate (không seed)
migrate-only:
	docker exec -it botble-cms-main-laravel.test-1 bash -c "php artisan migrate"

# Xem logs container PHP
logs:
	docker logs -f botble-cms-main-laravel.test-1

# Import database từ file database.sql vào container MySQL
mysql-import:
	docker exec -i botble-cms-main-mysql-1 mysql -usail -ppassword laravel < database.sql
