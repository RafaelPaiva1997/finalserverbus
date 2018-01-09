FROM node:carbon
WORKDIR /users/rafelpaiva/desktop/app
COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]