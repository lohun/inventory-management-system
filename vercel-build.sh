    #!/bin/bash

echo "Installing dependencies..."
composer install --no-dev --optimize-autoloader



echo "Clearing Laravel caches..."
php artisan config:clear
php artisan cache:clear
php artisan view:clear
php artisan route:clear

php artisan key:generate
php artisan migrate:fresh --seed
php artisan storage:link
npm install


php artisan config:cache



echo "Build complete!"
