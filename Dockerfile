## no build module in project
FROM --platform=linux/amd64 node:16-alpine as builder
ARG PF_ENV

WORKDIR /app
COPY ./package.json ./
RUN yarn
COPY . .

RUN echo "$PF_ENV" > /app/.env

EXPOSE 3000

CMD ["yarn", "dev"]
