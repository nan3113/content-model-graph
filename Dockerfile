FROM node:12.16.3

WORKDIR /var/app

COPY .eslintrc .
COPY package-lock.json .
COPY package.json .

RUN npm install

COPY src ./src
COPY babel.config.js .
