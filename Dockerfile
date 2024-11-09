# Step 1: Use a base image
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the application code
COPY . .

# Step 5: Expose the application port (adjust based on app requirements)
EXPOSE 3000

# Step 6: Command to run the application
CMD ["npm", "start"]
