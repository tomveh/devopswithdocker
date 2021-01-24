FROM node:alpine as build-stage

COPY . /app

WORKDIR /app

ENV API_URL="http://localhost:8000"

RUN npm install && npm run build

FROM node:alpine

WORKDIR /app

COPY --from=build-stage /app/dist /app/dist

RUN npm install -g serve &&\
	chown -R node /app

USER node

CMD ["serve", "-s", "-l", "5000", "dist"]

EXPOSE 5000
