FROM php:8.2-apache

# Fix: Disable conflicting MPM modules, keep only mpm_prefork
RUN a2dismod mpm_event mpm_worker 2>/dev/null || true \
    && a2enmod mpm_prefork rewrite

# Install PHP MySQL extension
RUN docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Copy all project files
COPY . /var/www/html/

# Set proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Apache config: allow .htaccess overrides
RUN echo '<Directory /var/www/html>\n\
    AllowOverride All\n\
    Require all granted\n\
</Directory>' > /etc/apache2/conf-available/softlife.conf \
    && a2enconf softlife

EXPOSE 80

CMD ["apache2-foreground"]
