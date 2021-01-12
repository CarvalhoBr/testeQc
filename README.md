# README

## Rodando o projeto

```bash
docker-compose up #Sobe o container do banco de dados

bundle install
rails db:migrate
rails db:seed
rails server
```
Por se tratar de uma quantidade muito grande de dados o seed pode demorar um pouco

## Desafio
Dados os arquivos json com os dados das questões devem ser elaborados os seguintes modelos de busca:
- Disciplinas com questões mais quentes: Listar as disciplinas onde as questões foram as mais acessadas nas ultimas 24H
- Mais acessadas por periodo: Listar as questões mais acessadas por semana/mês/ano

## Solução
A solução foi feita com base no modelo mvc, padrão no framework rails, com excessão das views que não foram incluídas no teste.
Também foi utilizado um banco de dados postgreSQL para fazer a persistência dos dados e simular um ambiente mais realista.

## Endpoints

`GET http://localhost:3000/disciplines/hot_questions`

Retorna um ranking das disciplinas cujas questões foram mais acessadas no dia

`GET http://localhost:3000/questions/most_accessed/:period`

Retorna as questões mais acessadas no período de tempo que for estipulado

Parâmetros aceitos:
- week
- month
- year
