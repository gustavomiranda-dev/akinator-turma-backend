# 🔮 Akinator da Turma — Backend

![Java](https://img.shields.io/badge/Java-21-orange?logo=openjdk)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot-4.x-brightgreen?logo=springboot)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue?logo=postgresql)
![Maven](https://img.shields.io/badge/Maven-build-red?logo=apachemaven)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

API REST em Spring Boot para um jogo estilo **Akinator**, onde o jogador pensa em alguém da turma e o sistema tenta descobrir quem é através de perguntas de SIM/NÃO.

> Repositório do frontend: [`akinator-turma-frontend`](https://github.com/gustavomiranda-dev/akinator-turma-frontend)
---

## 📋 Índice

- [Como funciona](#-como-funciona)
- [Tecnologias](#-tecnologias)
- [Arquitetura](#-arquitetura)
- [Estrutura do projeto](#-estrutura-do-projeto)
- [Pré-requisitos](#-pré-requisitos)
- [Como rodar localmente](#-como-rodar-localmente)
- [Endpoints da API](#-endpoints-da-api)
- [Modelo de dados](#-modelo-de-dados)
- [Roadmap](#-roadmap)
- [Licença](#-licença)

---

## 🎮 Como funciona

1. O jogador clica em **Começar** e pensa em alguém da turma
2. O backend seleciona uma pergunta de SIM/NÃO (ex: *"Usa óculos?"*)
3. Conforme o jogador responde, o sistema vai eliminando candidatos que não batem com a resposta
4. Quando resta apenas 1 candidato, o sistema revela quem é
5. Se as perguntas acabarem sem resolver (ou todos forem eliminados por inconsistência), o jogador vence

O frontend não conhece a lógica do jogo — ele só pergunta *"qual pergunta devo mostrar?"* e o backend responde.

---

## 🛠 Tecnologias

| Categoria | Tecnologia |
|---|---|
| Linguagem | Java 21 |
| Framework | Spring Boot (Web, Data JPA, Validation) |
| Banco de dados | PostgreSQL 16 |
| ORM | Hibernate (via Spring Data JPA) |
| Build | Maven |
| Boilerplate | Lombok |
| Ambiente local | Docker Compose |

---

## 🏗 Arquitetura

```
Frontend (HTML/CSS/JS)
        │
        │ HTTP/JSON
        ▼
┌───────────────────┐
│  GameController    │  ← recebe HTTP, delega, devolve HTTP
├───────────────────┤
│  GameService        │  ← orquestra o fluxo do jogo
├───────────────────┤
│  AkinatorEngine      │  ← a inteligência: filtra candidatos,
│                      │     escolhe a próxima pergunta
├───────────────────┤
│  Repositories (JPA)  │
└─────────┬─────────┘
          ▼
     PostgreSQL
```

O domínio é organizado em **pacotes por feature**, não por camada técnica — tudo relacionado a `Game` (controller, service, engine, DTOs) fica junto, em vez de espalhado entre `controller/`, `service/`, `repository/` genéricos.

Por que o `Game` é persistido no banco desde o início (e não mantido em memória): plataformas de deploy gratuitas (Render, Railway) hibernam instâncias ociosas. Um `Game` em memória perderia o estado da partida a qualquer restart.

---

## 📁 Estrutura do projeto

```
src/main/java/com/turma/akinator/
├── AkinatorApplication.java
│
├── pessoa/
│   ├── Pessoa.java              # @Entity
│   ├── PessoaRepository.java
│   └── PersonDTO.java
│
├── pergunta/
│   ├── Pergunta.java            # @Entity
│   ├── PessoaResposta.java      # @Entity (matriz pessoa × pergunta)
│   ├── PerguntaRepository.java
│   ├── PessoaRespostaRepository.java
│   ├── QuestionDTO.java
│   └── AnswerRequest.java
│
├── game/
│   ├── Game.java                 # @Entity
│   ├── GameController.java
│   ├── GameService.java
│   ├── AkinatorEngine.java       # a lógica de decisão
│   ├── GameResponse.java
│   └── GameRepository.java
│
└── config/
    ├── CorsConfig.java
    └── GlobalExceptionHandler.java

src/main/resources/
├── application.yml
├── application-dev.yml
└── data-dev.sql                  # massa de dados para ambiente dev

docker-compose.yml
```

---

## ✅ Pré-requisitos

- Java 21+
- Maven 3.9+
- Docker e Docker Compose

---

## ▶️ Como rodar localmente

**1. Clone o repositório**
```bash
git clone https://github.com/gustavomiranda-dev/akinator-turma-backend.git
cd akinator-turma-backend
```

**2. Suba o banco de dados**
```bash
docker compose up -d
```

**3. Rode a aplicação com o profile `dev`**
```bash
mvn spring-boot:run -Dspring-boot.run.profiles=dev
```

Ou, pela IDE: configure **Active profiles: `dev`** na run configuration antes de rodar.

A aplicação sobe em `http://localhost:8080`. Com o profile `dev` ativo, o banco já é populado automaticamente com pessoas, perguntas e respostas de teste (`data-dev.sql`).

**4. Teste o fluxo**
```bash
curl -X POST http://localhost:8080/api/games
```

---

## 📡 Endpoints da API

### Iniciar uma partida

```http
POST /api/games
```

**Resposta `200 OK`**
```json
{
  "gameId": "351abae2-2d34-4547-be70-1f1c4f0a4ed5",
  "finished": false,
  "question": {
    "id": 2,
    "text": "Usa óculos?"
  },
  "person": null,
  "candidatesRemaining": 4
}
```

### Responder uma pergunta

```http
POST /api/games/{gameId}/answers
Content-Type: application/json
```

**Corpo da requisição**
```json
{
  "questionId": 2,
  "answer": false
}
```

**Resposta — próxima pergunta**
```json
{
  "gameId": "351abae2-2d34-4547-be70-1f1c4f0a4ed5",
  "finished": false,
  "question": { "id": 1, "text": "É homem?" },
  "person": null,
  "candidatesRemaining": 2
}
```

**Resposta — pessoa descoberta**
```json
{
  "gameId": "351abae2-2d34-4547-be70-1f1c4f0a4ed5",
  "finished": true,
  "question": null,
  "person": { "id": 1, "name": "Gustavo", "photo": "/images/gustavo.jpg" },
  "candidatesRemaining": 1
}
```

**Resposta — não foi possível descobrir**
```json
{
  "gameId": "351abae2-2d34-4547-be70-1f1c4f0a4ed5",
  "finished": true,
  "question": null,
  "person": null,
  "candidatesRemaining": 2
}
```

### Erros

| Status | Quando acontece |
|---|---|
| `400 Bad Request` | Corpo da requisição inválido (ex: `questionId` ausente) |
| `404 Not Found` | `gameId` ou `questionId` inexistente |

---

## 🗃 Modelo de dados

| Entidade | Descrição |
|---|---|
| `Pessoa` | Alguém que pode ser descoberto (`id`, `nome`, `foto`) |
| `Pergunta` | Uma característica perguntável (`id`, `texto`) |
| `PessoaResposta` | Resposta de uma pessoa a uma pergunta — matriz completa (`pessoa`, `pergunta`, `resposta`) |
| `Game` | Uma partida em andamento (`publicId`, `finalizado`, `criadoEm`, candidatos restantes, perguntas já usadas) |

O cadastro de pessoas, perguntas e respostas é feito via painel administrativo, fora do fluxo do jogo em si.

---

## 🗺 Roadmap

- [ ] Painel administrativo de cadastro (pessoas, perguntas, respostas)
- [ ] Algoritmo de escolha de pergunta por ganho de informação (entropia), substituindo a seleção aleatória atual
- [ ] Testes automatizados do `AkinatorEngine`
- [ ] Deploy em produção (Render/Railway)
- [ ] Aprendizado de novas perguntas quando o sistema não descobre (V3)

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
