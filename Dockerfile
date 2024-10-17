# Usar a imagem base oficial do Node.js
FROM node:14

# Definir o diretório de trabalho no container
WORKDIR /app

# Copiar arquivos de dependências do projeto
COPY package*.json ./

# Instalar dependências
RUN npm install

# Copiar o restante do código da aplicação para o container
COPY . .

# Expor a porta que o aplicativo usa
EXPOSE 4000

# Definir o comando de inicialização
CMD ["node", "server.js"]
