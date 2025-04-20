FROM node:20.11.1-alpine3.19

WORKDIR /app

RUN apk update && \
    apk install -y curl && \
    rm -rf /var/lib/apk/lists/*

COPY package*.json ./

RUN npm install --production

COPY . .

RUN chmod +x index.js

EXPOSE 3000

CMD ["node", "index.js"]
