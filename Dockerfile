FROM node:14-alpine

WORKDIR /usr/src/app

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

EXPOSE 5000

ENV HOST=0.0.0.0

CMD [ "node", "index.js" ]
