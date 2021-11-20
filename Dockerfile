FROM node:16-alpine

RUN apk add --update --no-cache python3 g++ make && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

RUN yarn global add wetty

ENTRYPOINT ["wetty"]

