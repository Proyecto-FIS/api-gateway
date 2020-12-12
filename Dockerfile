FROM node:15-alpine

WORKDIR /coffaine-api-gateway
COPY package.json .
COPY package-lock.json .
COPY server.js .
COPY .yo-rc.json .
COPY .babelrc .
RUN npm install

WORKDIR /coffaine-api-gateway
COPY config config

CMD npm start