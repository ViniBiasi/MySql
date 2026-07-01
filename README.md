# 📦 Sistema de Estoque SQL

Projeto desenvolvido com o objetivo de praticar modelagem de banco de dados relacional e consultas SQL, simulando um sistema simples de controle de estoque.

---

# 🎯 Objetivo

Desenvolver um banco de dados relacional para gerenciamento de estoque, aplicando conceitos fundamentais e intermediários de SQL, como:

- Modelagem relacional
- Chaves primárias e estrangeiras
- Relacionamentos entre tabelas
- Consultas com JOIN
- Agrupamentos com GROUP BY
- Filtros com HAVING
- Subconsultas
- EXISTS / NOT EXISTS
- Criação de VIEW

---

# 💻 Tecnologias

- MariaDB
- SQL
- Git
- GitHub
- Visual Studio Code
- SQLTools

---

# 🗂️ Modelo Relacional

![Modelo Relacional](docs/modelo_relacional.png)

---

# 🗄️ Estrutura do Banco

O banco de dados é composto por quatro tabelas:

### Categorias

Armazena as categorias dos produtos.

| Campo | Tipo |
|--------|------|
| id_categoria | INT |
| nome_categoria | VARCHAR(15) |

---

### Fornecedores

Armazena os fornecedores dos produtos.

| Campo | Tipo |
|--------|------|
| id_fornecedor | INT |
| nome_fornecedor | VARCHAR(50) |
| telefone | VARCHAR(15) |

---

### Produtos

Armazena os produtos cadastrados.

| Campo | Tipo |
|--------|------|
| id_produto | INT |
| nome | VARCHAR(30) |
| descricao | VARCHAR(50) |
| preco | DECIMAL(10,2) |
| quantidade_estoque | INT |
| id_categoria | INT |
| id_fornecedor | INT |

---

### Movimentações

Registra entradas e saídas do estoque.

| Campo | Tipo |
|--------|------|
| id_movimentacao | INT |
| data_movimentacao | DATE |
| tipo_movimentacao | ENUM |
| quantidade | INT |
| id_produto | INT |

---

# ⚙️ Funcionalidades

- Cadastro de categorias
- Cadastro de fornecedores
- Cadastro de produtos
- Registro de movimentações de estoque
- Controle de entradas e saídas
- Consultas utilizando JOIN
- Agrupamentos com GROUP BY
- Filtros com HAVING
- Subconsultas
- EXISTS e NOT EXISTS
- VIEW para consultas simplificadas

---

# ▶️ Como executar

### 1. Clone o repositório

```bash
git clone https://github.com/SEU-USUARIO/Sistema_de_estoque_SQL.git
```

### 2. Execute os arquivos SQL na seguinte ordem

1. `create_tables.sql`
2. `sample_data.sql`
3. `consultas.sql`

---

# 📊 Consultas implementadas

O projeto contém consultas utilizando:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Subconsultas
- EXISTS
- NOT EXISTS
- VIEW
- Funções de agregação (COUNT, SUM, AVG e MAX)

---

# 📚 Objetivo de aprendizado

Este projeto faz parte da minha jornada de estudos em Banco de Dados e será utilizado como base para os próximos estudos em:

- Python
- Pandas
- Power BI
- Machine Learning

---

# 👨‍💻 Autor

Desenvolvido por **Vini Biasi** como projeto de estudos em SQL.
