FROM php:8.3-fpm-alpine

# Set platform (nếu build local trên máy ARM64)
# Không khai báo platform ở đây mà để docker-compose config

# Cài các extension PHP cần thiết cho Laravel
RUN apk add --no-cache \
        libzip-dev \
        oniguruma-dev \
        bash \
        git \
        unzip \
        curl \
        libpng-dev \
        libjpeg-turbo-dev \
        freetype-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) pdo_mysql mbstring zip gd bcmath

# Composer (nếu chưa có)
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Tạo user sail để chạy app (giống Laravel Sail)
ARG WWWUSER=1000
ARG WWWGROUP=1000
RUN addgroup -g ${WWWGROUP} sail && \
    adduser -G sail -g sail -u ${WWWUSER} -s /bin/sh -D sail && \
    chown -R sail:sail /var/www/html

WORKDIR /var/www/html

USER sail

CMD ["php-fpm"]
