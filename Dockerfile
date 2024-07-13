FROM node:16 as build
WORKDIR /app

COPY package.json .
COPY package-lock.json .
COPY investec.db .
COPY prisma ./prisma/
COPY tsconfig.json .
COPY src ./src
COPY public ./public

RUN npm ci

EXPOSE 3000
ENTRYPOINT ["npm", "start"]
