FROM node:slim

WORKDIR /app

COPY . .

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
