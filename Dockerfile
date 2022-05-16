FROM bitnami/node:16

WORKDIR /usr/src/app

COPY ./package*.json /usr/src/app/

RUN npm install

COPY ./ /usr/src/app/

EXPOSE 3064

CMD [ "npm","start","test","test:coverage" ,"3064"]
