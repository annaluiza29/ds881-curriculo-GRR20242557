# Usa uma imagem base leve do Node
FROM node:20-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de dependência e instala
COPY package*.json ./
RUN npm install

# Copia o restante do código
COPY . .

# Expõe a porta exigida pelo enunciado
EXPOSE 8080

# Executa o servidor de desenvolvimento
CMD ["npm", "run", "dev"]