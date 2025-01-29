FROM php:8.0-apache

# Install dependencies untuk ekstensi PHP seperti zip, gd, dan lainnya
RUN apt-get update && apt-get install -yq git curl nano htop screen \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libxml2-dev \
    && docker-php-ext-install zip \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    && docker-php-ext-install pdo pdo_mysql mysqli


# Enable mod_rewrite untuk Apache (misalnya untuk framework Laravel)
RUN a2enmod rewrite

# Get Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory di Apache
WORKDIR /var/www/html

# Pastikan permission folder cache Composer benar
RUN mkdir -p ~/.composer && chown -R www-data:www-data ~/.composer

# Expose port Apache (port default 80)
EXPOSE 80
