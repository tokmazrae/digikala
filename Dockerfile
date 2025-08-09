FROM php:8.3-fpm

# Arguments for non-interactive apt
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y             git curl zip unzip libzip-dev libpng-dev libjpeg-dev libonig-dev             libxml2-dev libpq-dev libsqlite3-dev libicu-dev libssl-dev             nodejs npm             && docker-php-ext-install pdo pdo_mysql mbstring exif pcntl bcmath gd zip             && pecl install redis && docker-php-ext-enable redis             && apt-get clean && rm -rf /var/lib/apt/lists/*

# Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# Permissions
RUN useradd -G www-data,root -u 1000 -m developer
RUN chown -R www-data:www-data /var/www/html || true

# Expose
EXPOSE 9000

CMD ["php-fpm"]
