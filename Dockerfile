FROM public.ecr.aws/docker/library/node:22-alpine
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

COPY src/ ./src/

CMD ["npm", "start"] 