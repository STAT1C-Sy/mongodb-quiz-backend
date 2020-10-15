FROM node:10

ENV TZ="Europe/Stockholm"
RUN date


RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

CMD ["npm", "run", "start"]
