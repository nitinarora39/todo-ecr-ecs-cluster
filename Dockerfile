FROM node:12-alpine

WORKDIR /app

COPY . ./

RUN npm install --production

EXPOSE 3000

CMD ["npm", "run", "start"]
