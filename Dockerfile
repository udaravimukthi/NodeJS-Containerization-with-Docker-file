FROM node:10

# Create app director
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=productio
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
