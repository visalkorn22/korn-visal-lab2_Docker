# Use official Node.js Alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies in one layer
COPY package*.json ./
RUN npm install --production && \
    npm cache clean --force

# Copy app source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run app
CMD ["node", "app.js"]

