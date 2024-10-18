#!/bin/bash

apt update && apt install -y curl unzip default-mysql-client

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

docker-php-ext-install pdo pdo_mysql mbstring zip gd

chown -R www-data:www-data /ideas-project/storage
chown -R www-data:www-data /ideas-project/bootstrap/cache
chmod -R 775 /ideas-project/storage
chmod -R 775 /ideas-project/bootstrap/cache

sleep 10

composer install

php artisan migrate

php artisan config:cache
php artisan route:cache

php artisan key:generate

php artisan storage:link

# Inicia o servidor Laravel
php artisan serve --host=0.0.0.0 --port=80
