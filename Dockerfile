FROM docker.io/bitpoke/wordpress-runtime:bedrock-build-php-8.1.9 as builder
FROM docker.io/bitpoke/wordpress-runtime:bedrock-php-8.1.9
COPY --from=builder --chown=www-data:www-data /app /app
