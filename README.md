# Projeto de Minimundo – Loja de Eletrônicos  
Experiência Prática IV – Criação e Manipulação de Dados em SQL

Este repositório apresenta a implementação completa do banco de dados referente ao minimundo “Loja de Eletrônicos”, desenvolvido a partir do modelo lógico construído na Experiência Prática III. O objetivo é demonstrar, de forma prática, a aplicação da linguagem SQL para criação, povoamento, consulta e manipulação de dados em um ambiente relacional.



## 1. Objetivo do Projeto
A atividade consiste em integrar os conhecimentos de modelagem de dados com a execução real de comandos SQL, utilizando ferramentas como MySQL Workbench ou HeidiSQL.  
Os objetivos principais são:

- Criar as tabelas do banco de dados conforme o modelo lógico.  
- Inserir dados consistentes e coerentes com o minimundo.  
- Executar consultas utilizando filtragem, ordenação, junções e agregações.  
- Realizar operações de atualização e exclusão respeitando a integridade referencial.  
- Organizar e versionar todos os scripts em um repositório GitHub público.



## 2. Estrutura de Entidades e Relacionamentos
O banco de dados modelado possui as seguintes entidades principais:

- Categoria  
- Produto  
- Cliente  
- Pedido  
- Item_Pedido  
- Pagamento  
- Fornecedor  
- Compra_Estoque  

Os relacionamentos foram implementados conforme o DER, incluindo chaves primárias, chaves estrangeiras e cardinalidades 1:N e 1:1 conforme necessário.



## 3. Arquivos Disponíveis no Repositório

### 3.1 `00_create_tables.sql`  
Script responsável pela criação de todas as tabelas do banco de dados. Inclui:

- Definição dos tipos de dados.  
- Chaves primárias e estrangeiras.  
- Estrutura compatível com o modelo lógico produzido na EP III.

### 3.2 `01_inserts_iniciais.sql`  
Contém os comandos INSERT utilizados para povoar o banco com dados iniciais.  
As inserções abrangem todas as tabelas, garantindo consistência com as restrições de integridade do modelo.

### 3.3 `02_consultas_select.sql`  
Reúne consultas SQL que demonstram:

- Uso de cláusulas WHERE.  
- Ordenação com ORDER BY.  
- Limitação de resultados com LIMIT.  
- Junções entre tabelas (JOIN).  
- Agregações e agrupamentos (GROUP BY).

### 3.4 `03_updates_deletes.sql`  
Inclui comandos de manipulação de dados (DML):

- Três operações UPDATE, com condições específicas.  
- Três operações DELETE, garantindo exclusões seguras e coerentes com o modelo relacional.  



## 4. Procedimento de Execução

Para executar o projeto em um ambiente MySQL:

1. Importar o arquivo de criação das tabelas:  
   ```sql
   SOURCE 00_create_tables.sql;

2. Executar o script de inserção dos dados iniciais:
3. ```sql
   SOURCE 01_inserts_iniciais.sql;

4. Rodar o arquivo de consultas:
5. ```sql
   SOURCE 02_consultas_select.sql;

6. Testar comandos de atualização e exclusão:
7. ```sql
   SOURCE 03_updates_deletes.sql;

## 5. Ferramentas Utilizadas
- MySQL / MariaDB  
- SQLite  
- MySQL Workbench  
- HeidiSQL  
- Git e GitHub para versionamento  
- Linguagem SQL (DDL, DML e DQL)

  6. Conclusão

Este repositório apresenta a implementação prática do banco de dados da Loja de Eletrônicos, demonstrando:
Criação estruturada do esquema de dados.
Inserção consistente de informações.
Consultas relacionais completas.
Manipulação responsável dos registros.
Organização do projeto em um ambiente de versionamento.
O conjunto de scripts permite recriar e testar o banco de dados integralmente, atendendo a todos os requisitos da Experiência Prática IV.










