FROM node:18-alpine
RUN this_command_does_not_exist

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
