#!/bin/bash

# baixa a imagem mais recente do mysql
docker pull mysql/mysql-server:latest

# inicia o conteiner do mysql
cd docker && docker compose up -d

# Espera o banco de dados estar pronto
echo "Aguardando o MySQL estar pronto..."
until docker exec my-mysql mysqladmin --user=root --password=mysqlPW ping --silent; do
    sleep 2
done
echo "MySQL está pronto!"

# Retorna ao diretório principal
cd ..

# Instala as dependências do composer
composer install

# instalação do jwt para criação do token de acesso a api
composer require php-open-source-saver/jwt-auth

# Publicação dos arquivos do jwt
yes | php artisan vendor:publish --provider="PHPOpenSourceSaver\JWTAuth\Providers\LaravelServiceProvider"

# limpeza do cache de execução para rodar as migrations
php artisan config:cache

# criação da nossa chave de acesso a api
php artisan jwt:secret

# Executa as migrações do banco
php artisan migrate

# criação dos usuarios do banco
php artisan db:seed

# Inicia o servidor e a api
php artisan serve
