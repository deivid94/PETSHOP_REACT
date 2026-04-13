<div align="center">

<img src="Petshop/public/hero.png" alt="PetShop Banner" width="100%" />

# 🐾 PetShop — Gestão de Petshop Full Stack

**Plataforma moderna para gestão de clientes, pets e agendamentos de serviços.**

[![React](https://img.shields.io/badge/React-19.x-61DAFB?style=for-the-badge&logo=react&logoColor=black)](https://react.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.x-3178C6?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![Vite](https://img.shields.io/badge/Vite-8.x-646CFF?style=for-the-badge&logo=vite&logoColor=white)](https://vitejs.dev/)
[![Node.js](https://img.shields.io/badge/Node.js-LTS-5FA04E?style=for-the-badge&logo=nodedotjs&logoColor=white)](https://nodejs.org/)
[![Express](https://img.shields.io/badge/Express-5.x-000000?style=for-the-badge&logo=express&logoColor=white)](https://expressjs.com/)
[![Prisma](https://img.shields.io/badge/Prisma-7.x-2D3748?style=for-the-badge&logo=prisma&logoColor=white)](https://www.prisma.io/)
[![SQLite](https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white)](https://www.sqlite.org/)
[![ESLint](https://img.shields.io/badge/ESLint-9.x-4B32C3?style=for-the-badge&logo=eslint&logoColor=white)](https://eslint.org/)

[![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow?style=for-the-badge)]()
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](./LICENSE)

</div>

---

## 📋 Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Funcionalidades](#-funcionalidades)
- [Arquitetura](#-arquitetura)
- [Tech Stack](#-tech-stack)
- [Estrutura de Pastas](#-estrutura-de-pastas)
- [Como Rodar](#-como-rodar)
- [Variáveis de Ambiente](#-variáveis-de-ambiente)
- [API Endpoints](#-api-endpoints)
- [Banco de Dados](#-banco-de-dados)
- [Como Contribuir](#-como-contribuir)
- [Autor](#-autor)

---

## 🐶 Sobre o Projeto

O **PetShop** é uma aplicação full stack desenvolvida para modernizar a gestão de petshops. Com ela, é possível cadastrar clientes, gerenciar seus pets e realizar agendamentos de serviços de forma simples e eficiente.

O projeto foi construído com foco em:

- **Arquitetura desacoplada** — frontend e backend independentes, comunicando via API REST
- **Type Safety** — TypeScript em toda a stack, do banco de dados à interface
- **Developer Experience** — hot reload no frontend (Vite HMR) e backend (tsx watch), Prisma Studio para inspeção do banco
- **Escalabilidade** — estrutura preparada para crescer com novas features

---

## ✨ Funcionalidades

### Clientes
- [x] Cadastro de clientes com nome, telefone, e-mail e endereço
- [ ] Listagem e busca de clientes
- [ ] Edição e remoção de clientes

### Pets
- [x] Cadastro de pets vinculados a um cliente (nome, espécie)
- [ ] Listagem de pets por cliente
- [ ] Histórico de atendimentos por pet

### Agendamentos
- [x] Criação de agendamentos com data e tipo de serviço
- [ ] Visualização de agenda por data
- [ ] Notificações de lembretes

### API
- [x] Health check da API
- [ ] CRUD completo de clientes
- [ ] CRUD completo de pets
- [ ] CRUD completo de agendamentos
- [ ] Autenticação JWT

---

## 🏗️ Arquitetura

```
┌─────────────────────┐         REST API          ┌──────────────────────┐
│                     │ ◄────────────────────────► │                      │
│   Petshop (React)   │        HTTP/JSON           │  Petshop-api         │
│   localhost:5173    │                            │  (Express + Prisma)  │
│                     │                            │  localhost:3333      │
└─────────────────────┘                            └──────────┬───────────┘
                                                              │
                                                              ▼
                                                   ┌──────────────────────┐
                                                   │     SQLite (Prisma)  │
                                                   │      prisma/dev.db   │
                                                   └──────────────────────┘
```

---

## 🛠️ Tech Stack

| Camada | Tecnologia | Versão | Motivo |
|--------|-----------|--------|--------|
| **Frontend** | React | 19.x | Componentes reativos + React Compiler |
| **Frontend** | TypeScript | 5.x | Type safety na UI |
| **Frontend** | Vite | 8.x | Build ultrarrápido + HMR |
| **Backend** | Node.js | LTS | Runtime JavaScript server-side |
| **Backend** | Express | 5.x | Framework HTTP minimalista |
| **Backend** | TypeScript | 6.x | Type safety na API |
| **Banco** | SQLite | — | Banco leve para desenvolvimento |
| **ORM** | Prisma | 7.x | Migrations, tipagem e Prisma Studio |
| **Dev** | tsx | 4.x | Execução TypeScript no Node com watch |
| **Qualidade** | ESLint | 9.x | Padronização de código |

---

## 📁 Estrutura de Pastas

```
PETSHOP_REACT/
│
├── Petshop/                    # 🖥️ Frontend (React + Vite)
│   ├── public/                 # Assets estáticos (imagens, favicon)
│   └── src/
│       ├── assets/             # Recursos da aplicação
│       ├── services/           # Camada de integração com a API
│       ├── App.tsx             # Componente raiz
│       └── main.tsx            # Entry point React
│
├── Petshop-api/                # ⚙️ Backend (Express + Prisma)
│   ├── prisma/
│   │   ├── schema.prisma       # Modelos do banco de dados
│   │   └── dev.db              # Banco SQLite (gerado automaticamente)
│   └── src/
│       └── server.ts           # Entry point da API
│
└── README.md
```

---

## 🚀 Como Rodar

### Pré-requisitos

- [Node.js](https://nodejs.org/) v20 ou superior
- [npm](https://www.npmjs.com/) v10 ou superior
- [Git](https://git-scm.com/)

### 1. Clone o repositório

```bash
git clone https://github.com/deivid94/petshop-react.git
cd petshop-react
```

### 2. Configurar e rodar o Backend

```bash
# Entrar na pasta da API
cd Petshop-api

# Instalar dependências
npm install

# Copiar as variáveis de ambiente
cp .env.example .env

# Rodar as migrations do banco de dados
npx prisma migrate dev

# Iniciar o servidor em modo desenvolvimento
npm run dev
```

> A API estará disponível em `EM CONTRUÇÃO`

### 3. Configurar e rodar o Frontend

Abra um novo terminal:

```bash
# Entrar na pasta do frontend
cd Petshop

# Instalar dependências
npm install

# Iniciar o servidor de desenvolvimento
npm run dev
```

> A aplicação estará disponível em `http://localhost:5173`

### Scripts disponíveis

#### Frontend (`Petshop/`)

| Comando | Descrição |
|---------|-----------|
| `npm run dev` | Inicia o servidor de desenvolvimento com HMR |
| `npm run build` | Gera o build de produção |
| `npm run preview` | Visualiza o build de produção localmente |
| `npm run lint` | Executa o ESLint no projeto |

#### Backend (`Petshop-api/`)

| Comando | Descrição |
|---------|-----------|
| `npm run dev` | Inicia a API com hot reload (tsx watch) |
| `npm test` | Executa os testes |

---

## 🔑 Variáveis de Ambiente

### `Petshop-api/.env`

Crie o arquivo `.env` na pasta `Petshop-api/` com base no `.env.example`:

```env
# URL de conexão com o banco de dados
DATABASE_URL="file:./dev.db"
```

---

## 📡 API Endpoints

Base URL: `http://localhost:3333`

| Método | Rota | Descrição | Status |
|--------|------|-----------|--------|
| `GET` | `/healthcheck` | Verifica se a API está ativa | ✅ Implementado |
| `GET` | `/users` | Lista todos os clientes | 🔧 Em breve |
| `POST` | `/users` | Cria um novo cliente | 🔧 Em breve |
| `GET` | `/users/:id` | Busca cliente por ID | 🔧 Em breve |
| `PUT` | `/users/:id` | Atualiza dados do cliente | 🔧 Em breve |
| `DELETE` | `/users/:id` | Remove um cliente | 🔧 Em breve |
| `GET` | `/pets` | Lista todos os pets | 🔧 Em breve |
| `POST` | `/pets` | Cadastra um novo pet | 🔧 Em breve |
| `GET` | `/schedules` | Lista agendamentos | 🔧 Em breve |
| `POST` | `/schedules` | Cria um agendamento | 🔧 Em breve |

### Exemplo de resposta — `GET /healthcheck`

```json
{
  "message": "esta funcionando"
}
```

---

## 🗄️ Banco de Dados

O banco de dados é gerenciado pelo **Prisma ORM** com **SQLite**.

### Diagrama de entidades

```
┌───────────────────┐       ┌───────────────────┐
│       User        │       │        Pet        │
├───────────────────┤       ├───────────────────┤
│ clientid (PK)     │──────►│ id (PK)           │
│ name              │       │ name              │
│ phone             │       │ species           │
│ email             │       │ clientId (FK)     │
│ adress            │       └───────────────────┘
└───────────────────┘

┌───────────────────┐
│     Schedule      │
├───────────────────┤
│ id (PK)           │
│ date              │
│ service           │
└───────────────────┘
```

Para visualizar e editar os dados via interface gráfica, utilize o **Prisma Studio**:

```bash
cd Petshop-api
npx prisma studio
```

---

## 🤝 Como Contribuir

Contribuições são bem-vindas! Siga os passos abaixo:

### 1. Fork o repositório

Clique em **Fork** no canto superior direito da página do GitHub.

### 2. Clone o seu fork

```bash
git clone https://github.com/seu-usuario/petshop-react.git
cd petshop-react
```

### 3. Crie uma branch para sua feature

```bash
git checkout -b feature/minha-nova-feature
```

> Use o padrão: `feature/nome-da-feature`, `fix/nome-do-bug`, `docs/melhoria-docs`

### 4. Faça suas alterações e commit

```bash
git add .
git commit -m "feat: adiciona listagem de clientes"
```

> Siga o padrão de commits [Conventional Commits](https://www.conventionalcommits.org/):
> - `feat:` nova funcionalidade
> - `fix:` correção de bug
> - `docs:` atualização de documentação
> - `refactor:` refatoração de código
> - `test:` adição ou correção de testes

### 5. Push e Pull Request

```bash
git push origin feature/minha-nova-feature
```

Abra um **Pull Request** no GitHub descrevendo suas alterações.

---

## 👨‍💻 Autor

<div align="center">

<img src="https://github.com/deivid94.png" width="100px" style="border-radius: 50%;" alt="deivid94"/>

**Deivid**

[![GitHub](https://img.shields.io/badge/GitHub-deivid94-181717?style=for-the-badge&logo=github)](https://github.com/deivid94)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Conectar-0A66C2?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/deivid94)

</div>

---

<div align="center">

Feito com ❤️ por **Deivid** — 2026

</div>
