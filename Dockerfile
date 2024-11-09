FROM node:latest
WORKDIR /cicd/
COPY public/ /cicd/public
COPY src/ /cicd/src
COPY package.json /cicd/
RUN npm install 
CMD ["npm", "start"]
