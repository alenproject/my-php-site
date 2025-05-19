FROM php:8.2-apache

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Copy your PHP files into the Apache web root
COPY public/ /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html
