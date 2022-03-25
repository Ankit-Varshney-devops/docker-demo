FROM node:14.0-slim
RUN  apt update -y
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
ENTRYPOINT npm start

