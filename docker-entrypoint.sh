#!/bin/sh
set -e

# Đang khởi chạy cấu hình tối ưu hóa Laravel...
echo "Đang dọn dẹp cache cũ..."
php artisan cache:clear || true
php artisan config:clear || true
php artisan route:clear || true
php artisan view:clear || true

# Tạo symlink cho storage nếu chưa có
php artisan storage:link || true

# Cấu hình tối ưu hóa cho môi trường Production nếu có file .env hoặc env vars phù hợp
echo "Đang thiết lập tối ưu hóa cache Laravel..."
php artisan config:cache || true
php artisan route:cache || true
php artisan view:cache || true

# Khởi chạy Apache ở foreground
echo "Đang khởi động máy chủ Apache trên cổng $PORT..."
exec apache2-foreground
