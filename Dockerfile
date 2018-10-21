# Specify the base image.
FROM node:alpine

WORKDIR /usr/app

# First only copy the package.json, thus it will reduce the number of rebuilds due to other file changes.
COPY ./package.json ./

# Install dependencies.
RUN npm install

# Copying rest of the files this way, stop cash invalidated for package.json 
# and stops rebuild of RUN npm install command.
COPY ./ ./

# Default Command
CMD [ "npm", "start" ]
