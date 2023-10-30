# Baseado na imagem oficial do Node.js
FROM node:18-alpine

# Definindo a pasta de trabalho
WORKDIR /app

# Copiando todos os arquivos da aplicação
COPY . .

# Instalando as dependências
RUN npm install

# Construindo o projeto Next.js
RUN npm run build

# Expondo a porta padrão do Next.js
EXPOSE 3004

# Comando para iniciar o servidor Next.js
CMD ["npm", "start"]
