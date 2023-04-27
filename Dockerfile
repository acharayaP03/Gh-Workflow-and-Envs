FROM node:16-alpine

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME vuegraphql
ENV MONGODB_CLUSTER_ADDRESS cluster0.tkeijub.mongodb.net
ENV MONGODB_USERNAME trishtenac
ENV MONGODB_PASSWORD AYLR4PIurM4r1Pjl

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]