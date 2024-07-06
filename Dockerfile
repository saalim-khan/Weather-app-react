# Use a node base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /home/saalim/Desktop/project/weather-app-react

# Copy package.json and package-lock.json to the working directory
COPY package.json /home/saalim/Desktop/project/weather-app-react


# Install npm dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . /home/saalim/Desktop/project/weather-app-react


# Build the React app
RUN npm run build

# Expose the port where the app runs
EXPOSE 3000

# # Command to start the React app
CMD ["npm", "start"]

