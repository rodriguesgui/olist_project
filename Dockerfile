# Usando uma imagem base com Python
FROM python:3.12

# Definindo o mantenedor
LABEL maintainer="Olist"

# Atualizando a lista de pacotes e instalando dependências
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    vim \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# Criando um diretório de trabalho
WORKDIR /Olist

# Instalando DBT e adaptador para o postgresql
RUN pip install dbt-core==1.11.11
RUN pip install dbt-postgres==1.10.0

# Expor a porta
EXPOSE 8080

# Definir o comando padrão para execução quando o container for iniciado
CMD ["tail", "-f", "/dev/null"]
