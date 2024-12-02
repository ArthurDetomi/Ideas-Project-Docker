# 🚀 Projeto Laravel Dockerizado

Este projeto tem como objetivo facilitar **meu processo de instalação e deploy** de uma aplicação **Laravel** utilizando **Docker** e **Docker Compose**. Embora tenha sido configurado para meu uso pessoal, outras pessoas podem utilizá-lo com pequenas adaptações.

---

## 🛠️ Pré-requisitos

- **Docker**: [Instale aqui](https://docs.docker.com/get-docker/)  
- **Docker Compose**: [Instale aqui](https://docs.docker.com/compose/install/)

---

## ▶️ Como Executar o Projeto

1. **Construir e subir os contêineres:**
   ```bash
   docker-compose up --build
   ```

2. **Rodar os contêineres em segundo plano (modo *detached*):**
   ```bash
   docker-compose up -d
   ```

3. **Acompanhar os logs para verificar se tudo está funcionando:**
   ```bash
   docker-compose logs -f
   ```

4. **Encerrar os contêineres:**
   ```bash
   docker-compose down
   ```
---

## 📄 Observações

Este projeto foi dockerizado para meu uso pessoal. Caso alguém queira utilizá-lo, pequenas adaptações podem ser necessárias, especialmente nos nomes de serviços e bancos de dados.

---
