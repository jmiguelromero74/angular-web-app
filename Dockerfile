FROM node:16.13-alpine as node-angular-cli

LABEL authors="jmiguelromero"

WORKDIR /app

COPY . /app
#node
RUN npm install
#Angular CLI
RUN npm install -g @angular/cli

# Indicamos que este contenedor se comunica por el puerto 80/tcp
EXPOSE 80

# Declaramos una variable de entorno
ENV NAME World

RUN ng serve -o