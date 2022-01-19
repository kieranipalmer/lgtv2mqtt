FROM node:17

COPY package*.json ./
RUN npm install
COPY . .

CMD [ "node", "index.js" ,"-u ${TV_HOST}", "-t ${BROKER_URL}", "-U ${USERNAME}", "-P ${PASSWORD}"]