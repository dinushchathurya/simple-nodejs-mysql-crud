FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV RDS_HOST=localhost
ENV RDS_PORT=3306
ENV RDS_USERNAME=root
ENV RDS_PASSWORD=

EXPOSE 5000

CMD ["npm", "start"]