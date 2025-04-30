FROM php:8.2-cli

# Install PDO and pdo_mysql extension
RUN docker-php-ext-install pdo pdo_mysql

# Expose port 8000
EXPOSE 8000

# Set working directory
WORKDIR /var/www/html

# Start PHP server
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www/html"]

