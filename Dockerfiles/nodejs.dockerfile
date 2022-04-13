FROM node:17-alpine
WORKDIR /usr/src/app
COPY package*.json ./
COPY --chown=node:node . /usr/src/app
RUN npm install
COPY . .
EXPOSE 8080
USER node
CMD [ "node", "server.js" ]
