FROM node:alpine

LABEL maintainer "Pedro Gomes<pedrogomes3775@outlook.com>"

WORKDIR /api

ADD package.json /api

RUN npm install -g ts-node && npm i --silent 

ADD . /api

# RUN npm run build

CMD ls && npm start
