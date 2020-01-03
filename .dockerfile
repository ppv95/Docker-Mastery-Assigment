
# Node image as base
FROM node:6-alpine

EXPOSE 3000

#Applicatipon PATH
WORKDIR /usr/src/app

COPY package*.json ./

#This is for install dependecies in the node.js app folder.
RUN npm install && npm install express

#copy the app to the path,ovewritten if exists 
COPY test.js test.js

CMD ["node","test.js"]
