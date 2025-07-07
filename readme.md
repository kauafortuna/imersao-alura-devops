# Imersão DevOps - Alura Google Cloud

Este projeto é uma API desenvolvida com FastAPI para gerenciar alunos, cursos e matrículas em uma instituição de ensino.

## Pré-requisitos

- [Python 3.10 ou superior instalado](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## Passos para subir o projeto

1. **Faça o download do repositório:**
   [Clique aqui para realizar o download](https://github.com/guilhermeonrails/imersao-devops/archive/refs/heads/main.zip)

2. **Crie um ambiente virtual:**

   ```sh
   python3 -m venv ./venv
   ```

3. **Ative o ambiente virtual:**

   - No Linux/Mac:
     ```sh
     source venv/bin/activate
     ```
   - No Windows, abra um terminal no modo administrador e execute o comando:

   ```sh
   Set-ExecutionPolicy RemoteSigned
   ```

   ```sh
   venv\Scripts\activate
   ```

4. **Instale as dependências:**

   ```sh
   pip install -r requirements.txt
   ```

5. **Execute a aplicação:**

   ```sh
   uvicorn app:app --reload
   ```

6. **Acesse a documentação interativa:**

   Abra o navegador e acesse:  
   [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

   Aqui você pode testar todos os endpoints da API de forma interativa.

---

## Passos para subir o projeto com Docker

Com o [Docker](https://www.docker.com/get-started/) e o Docker Compose instalados, você pode subir a aplicação com um único comando, sem a necessidade de gerenciar um ambiente virtual Python manualmente.

1. **Construa e execute os contêineres:**
   Na raiz do projeto, execute:

   ```sh
   docker-compose up --build
   ```

   O comando `--build` é recomendado na primeira vez para construir a imagem. Para execuções futuras, `docker-compose up` é suficiente.

2. **Acesse a documentação interativa:**
   Abra o navegador e acesse:
   http://12.0.0.1:8000/docs

   Para parar a aplicação, pressione `Ctrl+C` no terminal e, para remover os contêineres e redes, execute `docker-compose down`.

---

## Estrutura do Projeto

- `app.py`: Arquivo principal da aplicação FastAPI.
- `models.py`: Modelos do banco de dados (SQLAlchemy).
- `schemas.py`: Schemas de validação (Pydantic).
- `database.py`: Configuração do banco de dados SQLite.
- `routers/`: Diretório com os arquivos de rotas (alunos, cursos, matrículas).
- `requirements.txt`: Lista de dependências do projeto.

---

- O banco de dados SQLite será criado automaticamente como `escola.db` na primeira execução.
- Para reiniciar o banco, basta apagar o arquivo `escola.db` (isso apagará todos os dados).

---
