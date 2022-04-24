FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app

# Change working dir to /usr/src/app
WORKDIR /usr/src/app

VOLUME . /usr/src/app

RUN npm install

EXPOSE 8080

CMD ["node" , "server" ]
