# Use official PHP Apache image
FROM php:8.2-apache

# Enable Apache mod_rewrite
RUN a2enmod rewrite headers expires

# Install required system libraries
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
        unzip \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        libxml2-dev \
        zlib1g-dev \
        libicu-dev \
        g++ \
        wget \
        curl \
        mariadb-client \
        libcurl4-openssl-dev \
        libssl-dev \
        libzip-dev \
        libonig-dev \
        && docker-php-ext-configure gd \
            --with-freetype \
            --with-jpeg \
        && docker-php-ext-install -j$(nproc) \
            mysqli \
            pdo \
            pdo_mysql \
            xml \
            mbstring \
            gettext \
            soap \
            intl \
            gd \
            opcache \
            calendar \
            iconv \
            zip