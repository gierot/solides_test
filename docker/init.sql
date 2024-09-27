-- cria o banco de dados
CREATE DATABASE IF NOT EXISTS mysqlDB;

-- cria o usuario admin e define a senha
CREATE USER 'admin'@'127.0.0.1' IDENTIFIED BY 'mysqlPW';

-- Concede privilégios ao usuário
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'127.0.0.1';

-- Aplica as alterações
FLUSH PRIVILEGES;

-- Seleciona o banco de dados
USE user;

-- Cria a tabela users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);
