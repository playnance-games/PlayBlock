FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Copy the environment file
COPY .env .env

# Run the bot
CMD [ "node", "index.js" ]
