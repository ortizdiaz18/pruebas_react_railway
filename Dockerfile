FROM nginx:1.20.1

WORKDIR /app

COPY package*.json .

RUN npm install

copy . .

RUN npm run build

CMD ["npm", "start"]

