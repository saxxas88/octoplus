#Sample Dockerfile for NodeJS Apps

FROM ghcr.io/puppeteer/puppeteer:21.5.1

ENV NODE_ENV=production \
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

CMD [ "node", "./dist/index.js" ]