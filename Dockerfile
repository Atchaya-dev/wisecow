# Step 1: Use a base image with Node.js
FROM node:14

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy application code to the container
COPY . .

# Step 4: Install dependencies
RUN npm install

# Step 5: Expose the port the app runs on
EXPOSE 3000

# Step 6: Define the command to run the application
CMD ["npm", "start"]
