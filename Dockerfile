FROM python:3.9-slim

# Instalar dependências necessárias para o git
RUN apt-get update && apt-get install -y git && apt-get clean

# Definir o diretório de trabalho
WORKDIR /app

# Adicionar argumentos de build para o token e repositório
ARG GITHUB_TOKEN
ARG REPO_URL

# Clonar o repositório privado
RUN git clone https://${GITHUB_TOKEN}@${REPO_URL} /app

# Instalar dependências do Python
RUN pip install -r requirements.txt

# Expor a porta padrão do Flask
EXPOSE 5000

# Comando para iniciar o aplicativo
CMD ["flask", "run", "--host=0.0.0.0"]
