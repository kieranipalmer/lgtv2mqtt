FROM node:17

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

CMD [ "sh", "-c", "node /app/index.js -u ${BROKER_URL} -t ${TV_HOST} -U ${USERNAME} -P ${PASSWORD}"] 
