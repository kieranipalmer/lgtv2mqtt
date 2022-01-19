FROM node:17

COPY package*.json ./
RUN npm install
COPY . .
CMD [ "node", "index.js" ]