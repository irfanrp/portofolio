# Use node version 18 on top of Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /portfolio

# Copy the contents of the 'public' directory from the project to the working directory inside the container
COPY public/ /portfolio/public

# Copy the contents of the 'src' directory from the project to the working directory inside the container
COPY src/ /portfolio/src

# Copy the 'package.json' file from the project to the working directory inside the container
COPY package.json /portfolio/

# Run the npm install command to install project dependencies
RUN npm install

# Set the default command to be executed when the container is run
CMD ["npm", "start"]
