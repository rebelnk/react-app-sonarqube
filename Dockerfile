FROM ubuntu:16.04
MAINTAINER nikhil gupta
RUN apt-get -y update \
    && add-apt-repository ppa:webupd8team/java -y \
    && apt-get -y update \ 
    && apt-get install -y oracle-java8-installer
    
RUN apt-get install -y npm
RUN apt-get install -y nodejs
RUN ln -s /usr/bin/nodejs /usr/bin/node


COPY ./Nodejs_demo /app
WORKDIR /app

RUN npm install

CMD ["npm start"]


