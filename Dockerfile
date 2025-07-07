# Etapa 1: Escolha de uma imagem base otimizada
# Usamos a imagem 'slim' que é um bom equilíbrio entre tamanho e ter as bibliotecas necessárias.
FROM python:3.11-slim

# Etapa 2: Definir variáveis de ambiente
# Impede o Python de gerar arquivos .pyc e garante que os logs sejam enviados diretamente para o console.
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Etapa 3: Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Etapa 4: Copiar e instalar as dependências
# Copiamos primeiro o requirements.txt para aproveitar o cache de camadas do Docker.
# A instalação das dependências só será executada novamente se este arquivo mudar.
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Etapa 5: Copiar o código da aplicação
COPY . .

# Etapa 6: Expor a porta que a aplicação usará
EXPOSE 8000

# Etapa 7: Comando para iniciar a aplicação
# Usamos uvicorn para rodar o app, escutando em todas as interfaces de rede (0.0.0.0).
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload" ]


