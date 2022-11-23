FROM node:lts-alpine as builder

WORKDIR /app
COPY package.json package-lock.json ./

RUN yarn install

COPY . .
CMD yarn start
