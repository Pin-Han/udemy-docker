FROM node:12

# let docker know, after run 'npm install', the work env  move to /app
WORKDIR /app 

COPY package.json /app

# RUN is running during the 'docker build'
RUN npm install

# first dot is host file system
# second dot is image/container file system
COPY . /app

# Expose specific port
EXPOSE 80

# CMD is running during the 'docker run'
CMD ["node", "server.js"]

