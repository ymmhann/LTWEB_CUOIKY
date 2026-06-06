# Sử dụng image PHP 8.2 chính thức có tích hợp Apache làm base
FROM php:8.2-apache

# Sử dụng cấu hình php.ini tối ưu hóa cho môi trường Production
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Cài đặt các thư viện hệ thống cần thiết cho các PHP Extensions
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    libwebp-dev \
    zip \
    unzip \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Cấu hình và cài đặt các PHP Extensions thông dụng cho Laravel
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install -j$(nproc) \
        gd \
        pdo_mysql \
        bcmath \
        zip \
        opcache

# Cấu hình Opcache tối ưu hóa hiệu năng tải file PHP
RUN { \
    echo 'opcache.memory_consumption=128'; \
    echo 'opcache.interned_strings_buffer=8'; \
    echo 'opcache.max_accelerated_files=4000'; \
    echo 'opcache.revalidate_freq=2'; \
    echo 'opcache.fast_shutdown=1'; \
    echo 'opcache.enable_cli=1'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini

# Kích hoạt module rewrite của Apache cho Laravel routing hoạt động
RUN a2enmod rewrite

# Cấu hình lại Apache Document Root sang thư mục public của Laravel
ENV APACHE_DOCUMENT_ROOT /var/www/html/public
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Cấu hình động cổng lắng nghe theo biến môi trường PORT của Render (mặc định Render sử dụng PORT = 10000)
RUN sed -s -i 's/Listen 80/Listen ${PORT}/' /etc/apache2/ports.conf
RUN sed -s -i 's/<VirtualHost \*:80>/<VirtualHost *:${PORT}>/' /etc/apache2/sites-available/*.conf

# Cài đặt Composer từ image chính thức
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Thiết lập thư mục làm việc trong container
WORKDIR /var/www/html

# Sao chép mã nguồn dự án vào container
COPY . .

# Thiết lập phân quyền chính xác cho người dùng Apache (www-data)
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Cài đặt các thư viện PHP (bỏ qua dev dependencies để dung lượng nhẹ nhất)
RUN composer install --no-interaction --optimize-autoloader --no-dev

# Đưa file entrypoint vào bin, sửa lỗi CRLF (nếu soạn thảo trên Windows) và cấp quyền thực thi
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh
RUN sed -i -e 's/\r$//' /usr/local/bin/docker-entrypoint.sh \
    && chmod +x /usr/local/bin/docker-entrypoint.sh

# Cổng mặc định Render sẽ map (Render tự động cung cấp biến PORT này)
EXPOSE 10000
ENV PORT 10000

# Chỉ định Script chạy khi container khởi động
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
