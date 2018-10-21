# Specify the base image.
FROM node:alpine

# Install dependencies.
COPY ./ ./
RUN npm install

# Default Command
CMD [ "npm", "start" ]
