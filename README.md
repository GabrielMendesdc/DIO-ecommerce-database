# 🛍️ DIO E-commerce Database System

![MySQL](https://img.shields.io/badge/MySQL-8.0+-blue.svg)
![Database](https://img.shields.io/badge/Database-Relational-orange.svg)
![Queries](https://img.shields.io/badge/Queries-Advanced-green.svg)

Um sistema completo de banco de dados para e-commerce desenvolvido em MySQL, com schema relacional robusto e queries analíticas avançadas para business intelligence.

## 📊 Sobre o Projeto

Este projeto, feito para um Desafio de Projeto da DIO, implementa um modelo de banco de dados relacional para simular uma plataforma de e-commerce,
contemplando todas as entidades e relacionamentos necessários para operações de venda online, gestão de estoque, fornecedores e análise de dados.

## 🏗️ Arquitetura do Banco

![Modelo EER](https://via.placeholder.com/800x400?text=EER+Diagram+-+Add+your+image+here)

### 📋 Tabelas Principais
- **`clients`** - Cadastro de clientes
- **`product`** - Catálogo de produtos  
- **`orders`** - Pedidos e vendas
- **`seller`** - Vendedores/Revendedores
- **`supplier`** - Fornecedores
- **`storage`** - Locais de armazenamento

### 🔗 Tabelas de Relacionamento
- **`productOrder`** - Relação produtos × pedidos
- **`productSeller`** - Relação produtos × vendedores
- **`productSupplier`** - Relação produtos × fornecedores
- **`storageLocation`** - Relação produtos × estoque

## 🚀 Como Executar

### Pré-requisitos
- MySQL Server 8.0+
- MySQL Workbench (recomendado)

### 📥 Instalação

1. **Clone o repositório**
```bash
git clone https://github.com/GabrielMendesdc/DIO-ecommerce-database.git
cd ecommerce-database