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
