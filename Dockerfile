FROM mhart/alpine-node:10 AS build

WORKDIR /srv

ADD package.json .

RUN npm install

ADD . .

EXPOSE 3000

CMD [ "node", "server.js" ]