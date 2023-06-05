# Utiliza la imagen base de Node.js
FROM node:18-alpine

# Add metadata
LABEL authors="alejandro.hernandeza@axity.com"

WORKDIR /app

COPY app/yarn.lock app/package.json ./

RUN npm install --omit dev

COPY app/spec ./spec

COPY app/src ./src

CMD node src/index.js

EXPOSE 3000