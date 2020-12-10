FROM node:15-alpine

WORKDIR /coffaine-api-gateway
COPY coffaine-api-gateway/package.json .
COPY coffaine-api-gateway/package-lock.json .
COPY coffaine-api-gateway/server.js .
COPY coffaine-api-gateway/.yo-rc.json .
COPY coffaine-api-gateway/.babelrc .
RUN npm install

WORKDIR /coffaine-api-gateway
COPY coffaine-api-gateway/config config

EXPOSE 3000

CMD npm start