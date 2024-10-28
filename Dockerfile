FROM node:20.18 AS dev-deps

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE ${PORT}

CMD [ "npm", "start" ]
