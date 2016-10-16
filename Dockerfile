FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY appNodeExample/package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY appNodeExample/. /usr/src/app

# Expose port
EXPOSE 8080

# Start command
CMD [ "npm", "start" ]

