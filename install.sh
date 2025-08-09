#!/usr/bin/env bash
set -e

echo "Starting install script for Digikala Docker skeleton..."

# copy env if not exists
if [ ! -f .env ]; then
  cp .env.example .env
  echo "Created .env from .env.example"
fi

# build and start containers
docker compose up -d --build

echo "Waiting for MySQL to be ready..."
# wait for mysql
until docker exec digikala_mysql mysql -uroot -psecret -e 'select 1' &> /dev/null; do
  printf "."
  sleep 2
done
echo " MySQL is up."

echo "Running composer install inside app container..."
docker exec -u root digikala_app composer install --no-interaction --prefer-dist

echo "Installing node modules and building assets..."
docker exec -u root digikala_app npm install
docker exec -u root digikala_app npm run build || docker exec -u root digikala_app npm run dev || true

echo "Generating app key and running migrations..."
docker exec -u www-data digikala_app php artisan key:generate || docker exec -u root digikala_app php artisan key:generate
docker exec -u www-data digikala_app php artisan migrate --force || docker exec -u root digikala_app php artisan migrate --force

echo "Seeding demo data (if seeder exists)..."
docker exec -u www-data digikala_app php artisan db:seed --force || true

echo "Done. Visit http://localhost"
