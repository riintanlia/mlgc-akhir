FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . . 

ENV PORT=3000
ENV MODEL_URL=https://storage.googleapis.com/model-ml-submissionmlgc/model.json

CMD ["npm","start"]