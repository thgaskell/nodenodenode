FROM node:alpine

# Expose app port
EXPOSE 8080

# Configure work directory
WORKDIR /app

# Prepare to install dependencies
COPY ["package.json", "/app"]

# Install dependencies
ARG NODE_ENV=production
RUN npm install

# Pull in source files
COPY [".", "/app"]

# Start the application
CMD ["npm", "start"]
