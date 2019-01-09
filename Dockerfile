FROM node:11.6

WORKDIR /app

# Build the app
COPY package.json yarn.lock /app/
RUN yarn install

# Copy configuration files
COPY github /app/github
