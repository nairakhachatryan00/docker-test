FROM ubuntu:20.04
WORKDIR /docker
COPY . /docker
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_14.x  | bash -
RUN apt-get install nodejs
RUN npm install

## Install Node.js
#RUN apt-get update \
#      && apt-get install -qy --no-install-recommends curl \
#      && curl -sL http://deb.nodesource.com/setup_14.x | bash - \
#      && apt-get install -y nodejs

RUN npm -v

RUN #npm i

# Binds to port
EXPOSE  3000

#  Defines your runtime(define default command)
CMD npm run start
