# Projeto api

Este projeto utiliza Laravel com um banco de dados MySQL, gerenciado através do Docker. Antes de começar, certifique-se de ter as seguintes dependências e configurações.

## Dependências Necessárias

1. **Docker**
   - Para instalar o Docker, siga as instruções na [documentação oficial do Docker](https://docs.docker.com/get-docker/).

2. **PHP com Extensões MySQL**
   - Certifique-se de ter o PHP instalado. Para instalar o PHP no seu sistema, consulte a [documentação do PHP](https://www.php.net/manual/pt_BR/install.php).

3. **php-mysql**
   - Essa extensão permite que o PHP interaja com bancos de dados MySQL. A instalação varia conforme o sistema operacional, consulte a documentação do PHP para detalhes.

## Configurações no arquivo `php.ini`

Após instalar as dependências, você precisará verificar e modificar as configurações do PHP no arquivo `php.ini`.

1. **Localizar o arquivo `php.ini`**:
   - O arquivo geralmente está localizado em `/etc/php/php.ini` ou em um caminho semelhante, dependendo da sua instalação.

2. **Verificar as Extensões**:
   - Abra o arquivo `php.ini` em um editor de texto.
   - Procure as seguintes linhas e, se estiverem comentadas (iniciadas com `;`), descomente-as removendo o `;`:

   ```ini
   ;extension=mysqli
   ;extension=php_pdo_mysql
