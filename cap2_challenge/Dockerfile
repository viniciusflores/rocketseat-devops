# STAGE: BUILD

FROM node:18-alpine3.21 AS build

WORKDIR /usr/src/app

COPY package.json yarn.lock .env ./

RUN yarn

COPY . .

RUN yarn build
RUN yarn install --production && yarn cache clean

# STAGE: PRODUCTION

FROM node:18-alpine3.21

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/package.json ./package.json
COPY --from=build /usr/src/app/.next ./.next
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY --from=build /usr/src/app/public ./public

EXPOSE 3000

CMD [ "yarn", "run", "start" ]
