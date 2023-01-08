FROM node:12-alpine3.12 AS build
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.20.1
COPY /build /usr/share/nginx/html
EXPOSE 80:80

