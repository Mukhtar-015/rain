# Use official Node.js LTS image
FROM node: 24-alpine

# Set working directory inside container
WORKDIR /app

# COPY package files first (if they exist)
COPY package*.json ./

# Install dependencies (if you have any)
RUN npm Install

# Copy the rest of the project files
COPY . .

# Run tests (using Jest or other test runner)
CMD ["npm", "test"]