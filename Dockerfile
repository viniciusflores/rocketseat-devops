FROM node:18-alpine3.21

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

RUN yarn run build

EXPOSE 3000

CMD [ "yarn", "run", "start" ]
