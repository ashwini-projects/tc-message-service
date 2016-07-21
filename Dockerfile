FROM node:5.10.1
LABEL version="1.0"
LABEL description="Messages Microservice"

RUN apt-get install libpq-dev
RUN npm install -g nodemon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY . /usr/src/app

# Install app dependencies
RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
