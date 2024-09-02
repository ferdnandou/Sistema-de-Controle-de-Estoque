# Projeto 5 - Sistema de Controle de Estoque

## Descrição

Você foi contratado por uma empresa para desenvolver um Sistema de Controle de Estoque que permitirá gerenciar produtos, fornecedores e pedidos de reposição de maneira eficiente. O sistema deverá armazenar informações sobre os produtos disponíveis em estoque, os fornecedores que os fornecem, e os pedidos de reposição realizados para manter o estoque adequado.

## Objetivo

Criar e organizar um banco de dados para esse sistema, utilizando comandos SQL para realizar as seguintes operações:

1. **Criar o banco de dados**:
   - Nome: `SistemaControleEstoque`

2. **Criar as tabelas**:
   - **Fornecedores**: Armazena informações sobre os fornecedores.
   - **Produtos**: Armazena informações sobre os produtos disponíveis em estoque.
   - **PedidosReposicao**: Armazena informações sobre os pedidos de reposição realizados.

3. **Inserir dados**:
   - Insira dados relevantes nas tabelas de fornecedores, produtos e pedidos de reposição.

4. **Consultar dados**:
   - Realize consultas para verificar os produtos em estoque, pedidos de reposição feitos e informações sobre os fornecedores.

5. **Atualizar dados**:
   - Atualize a quantidade de produtos em estoque após receber um novo pedido de reposição.

6. **Deletar dados**:
   - Exclua registros que não são mais necessários, como produtos descontinuados ou fornecedores que não fazem mais parte da empresa.

## Comandos Utilizados

- `CREATE DATABASE`: Para criar o banco de dados do sistema.
- `CREATE TABLE`: Para criar as tabelas que armazenarão as informações.
- `INSERT INTO`: Para inserir dados nas tabelas.
- `SELECT`: Para consultar e visualizar os dados armazenados.
- `UPDATE`: Para atualizar os dados das tabelas.
- `DELETE`: Para remover registros desnecessários do banco de dados.
- `JOIN`: Para combinar dados de múltiplas tabelas e realizar consultas mais complexas.

## Desafio

Implemente o sistema seguindo os passos descritos acima. Certifique-se de que todas as operações estejam funcionando corretamente e que as consultas forneçam as informações necessárias para a gestão eficiente do estoque.

## Explicações Adicionais

- `CREATE DATABASE SistemaControleEstoque;`: Cria um novo banco de dados chamado SistemaControleEstoque.
- `USE SistemaControleEstoque;`: Define o banco de dados atual como SistemaControleEstoque.
- `CREATE TABLE`: Define a estrutura das tabelas.
- `INSERT INTO`: Adiciona novos registros às tabelas.
- `SELECT`: Consulta e exibe dados das tabelas.
- `UPDATE`: Modifica os registros existentes.
- `DELETE`: Remove registros das tabelas.
