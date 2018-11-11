FROM node:8
MAINTAINER nikhil gupta


EXPOSE 3000

COPY ./Nodejs_demo /app
WORKDIR /app

RUN npm install

CMD ["npm", "start"]


