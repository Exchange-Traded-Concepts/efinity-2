FROM node:16-alpine3.12

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .
COPY .env.example .env

# EXPOSE 3333

CMD ["npm", "run","dev"]

# docker run -p 3333:3333 efinity-test
# docker run --rm --name efinity -v $(pwd):/app -p 3333:3333 efinity-test

#  node ace migration:run
# docker-compose exec app node ace migration:run
