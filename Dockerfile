FROM debian:stretch-slim

ARG IMCONFLY_VERSION
EXPOSE 80

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get install -y curl \
                       gnupg2 \
                       imagemagick
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

RUN npm i -g imconfly@${IMCONFLY_VERSION}

WORKDIR /
CMD imconfly