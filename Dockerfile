FROM node:20.7.0-slim

WORKDIR /work

COPY dist ./dist
COPY node_modules ./node_modules
COPY package.json ./package.json
# удалить!! временно!!
COPY .env.production ./.env.production

CMD ["yarn", "start"]
