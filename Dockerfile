FROM node:16.13-alpine as node-angular-cli

LABEL authors="jmiguelromero"

WORKDIR /app

COPY . /app
#node
RUN npm install
#Angular CLI
RUN npm install -g @angular/cli

RUN ng serve -o