FROM node:10-alpine
WORKDIR /home/node/app
COPY package*.json ./
RUN chown -R node:node /home/node/app
USER node
RUN npm install 
COPY --chown=node:node . .
EXPOSE 3000
CMD [ "npm", "start" ]


