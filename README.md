# 🐾 PetShop React

> ⚠️ **Este projeto está em desenvolvimento ativo.** Funcionalidades podem estar incompletas ou sujeitas a alterações.

Sistema web para gerenciamento de petshop, com cadastro de clientes, pets e agendamento de serviços. O projeto é dividido em duas aplicações: um front-end em React e uma API REST com Express.

---

## 🛠️ Tecnologias

**Front-end (`/Petshop`)**

- React 19
- TypeScript
- Vite 8
- React Compiler
- ESLint

**Back-end (`/Petshop-api`)**

- Node.js
- Express 5
- TypeScript
- Prisma ORM 7
- SQLite (Better-SQLite3)
- Dotenv

---

## 📁 Estrutura do Projeto
```
PETSHOP_REACT/
├── Petshop/                # Front-end React
│   ├── src/
│   │   ├── App.tsx
│   │   ├── App.css
│   │   ├── main.tsx
│   │   └── index.css
│   ├── index.html
│   ├── vite.config.ts
│   ├── tsconfig.json
│   └── package.json
│
├── Petshop-api/            # Back-end API
│   ├── src/
│   │   └── server.ts
│   ├── prisma/
│   │   ├── schema.prisma
│   │   └── dev.db
│   ├── prisma.config.ts
│   ├── tsconfig.json
│   └── package.json
│
├── .gitignore
└── README.md
```

---

## 🗄️ Modelos do Banco de Dados

O projeto utiliza Prisma com SQLite e possui três modelos principais:

- **User** — Representa o cliente do petshop (nome, telefone, email, endereço)
- **Pet** — Representa o animal de estimação, vinculado a um User (nome, espécie)
- **Schedule** — Representa um agendamento de serviço (data, tipo de serviço)

---

## 🚀 Como Rodar

### Pré-requisitos

- Node.js (versão 18+)
- npm

### Back-end (API)
```bash
cd Petshop-api
npm install
npx prisma generate
npm run dev
```

O servidor iniciará em `http://localhost:3333`. Você pode testar acessando a rota `/healthcheck`.

### Front-end
```bash
cd Petshop
npm install
npm run dev
```

O Vite iniciará o servidor de desenvolvimento (por padrão em `http://localhost:5173`).

---

## 📌 Status do Projeto

| Funcionalidade                  | Status         |
| ------------------------------- | -------------- |
| Configuração do front-end React | ✅ Concluído   |
| Configuração do servidor Express| ✅ Concluído   |
| Schema do banco de dados Prisma | ✅ Concluído   |
| Rotas da API (CRUD)             | 🔧 Em andamento |
| Interface de cadastro de clientes| 🔧 Em andamento |
| Cadastro e listagem de pets     | 📋 Planejado   |
| Sistema de agendamento          | 📋 Planejado   |
| Integração front-end com API    | 📋 Planejado   |

---

## 👤 Autor

**Deivid Martins de Oliveira**

---

## 📄 Licença

Este projeto está sob a licença ISC.
