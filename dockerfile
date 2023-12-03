<<<<<<< HEAD
# Use the official Node.js image as the base image
FROM node

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose the port that your NestJS app is running on
EXPOSE 3000

# Start the application
=======
# Use the official Node.js image as the base image
FROM node

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . .

# Expose the port that your NestJS app is running on
EXPOSE 3000

# Start the application
>>>>>>> a4856ba8f3300dbcf5c9d5dfa7d9ebe4d74b30cf
CMD ["npm", "run", "start:prod"]