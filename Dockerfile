FROM node:16-alpine3.15

WORKDIR /usr/src/app

COPY . .

RUN rm -rf .env
RUN npm ci

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]

