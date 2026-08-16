# granja-api

API backend para o projeto Granja — estrutura inicial baseada em Spring Boot (Java 17) com Maven e suporte a execução via Docker (Dockerfile + docker-compose).

## Visão geral
Este repositório contém a base do backend construída com Spring Boot para servir como ponto de partida das histórias do projeto.

Tecnologias principais:
- Java 17
- Spring Boot
- Maven (Maven Wrapper incluído: `mvnw`)
- Docker / Docker Compose
- PostgreSQL (opcional via Docker Compose para desenvolvimento)

---

## Pré-requisitos (para desenvolvimento local)
- Git
- Java 17 (recomendado apenas para desenvolvimento sem Docker)
- Docker e Docker Compose (recomendado para desenvolvimento com contêineres)
- (Opcional) GitHub CLI `gh` para facilitar criação de PRs

---

## Como clonar
```bash
git clone https://github.com/rodrigovcf/granja-api.git
cd granja-api