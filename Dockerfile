# Base iage from which we want to build the docker image
FROM node:14

# Creation of the app dorectory
RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app/
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Installing app dependencies# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install --no-optional && npm cache clean --force

# Bundle app source
COPY . .

# Expose the port   
EXPOSE 3000

# Call to the package.json script
ENTRYPOINT ["npm", "start"]