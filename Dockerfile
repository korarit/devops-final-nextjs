# Use an official Node.js runtime as base image
FROM node:20

WORKDIR /app

COPY src/app/package.json src/app/package-lock.json ./
RUN npm install

COPY src/app ./

RUN npm run build

CMD ["npm", "run", "start"]