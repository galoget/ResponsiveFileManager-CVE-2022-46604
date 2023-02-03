FROM php:7.2.34-apache-buster

# Installs php-mbstring
RUN docker-php-ext-install mbstring

# Environment Variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

# Working Directory
WORKDIR /var/www/html/

# Install a few tools
RUN apt update
RUN apt install -y git curl wget unzip nano

# Copy Source ZIP File
COPY "responsive_filemanager_v9.9.5.zip" /var/www/html/

# Decompress Source files
RUN unzip "/var/www/html/responsive_filemanager_v9.9.5.zip"

# Change Owner to www-data
RUN chown -R www-data:www-data /var/www/html/

# Delete ZIP File
RUN rm -rf "responsive_filemanager_v9.9.5.zip"

# Expose Port 80
EXPOSE 80

# Entrypoint
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
