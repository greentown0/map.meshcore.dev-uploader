FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["sh", "-c", "node index.mjs ${DEVICE:-/dev/ttyACM0}"]