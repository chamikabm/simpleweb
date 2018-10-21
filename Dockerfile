# Specify the base image.
FROM node:alpine

WORKDIR /usr/app

# Install dependencies.
COPY ./ ./
RUN npm install

# Default Command
CMD [ "npm", "start" ]
