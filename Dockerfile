FROM node:lts-alpine
WORKDIR /app
COPY package.json package-lock.json /app/
RUN npm install
COPY . /app/
RUN npm run build
EXPOSE 3000
CMD ["npm", "start"]