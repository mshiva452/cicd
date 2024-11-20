FROM node:latest
# Set the working directory
WORKDIR /simple-react
# Copy the package.json and package-lock.json files
#COPY package*.json ./
# Install the dependencies
# ADD . .
#RUN npm install
# Copy the app files
COPY . .
# Build the app
RUN npm install
RUN npm run build
# Expose the port
EXPOSE 3000
# Run the app
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3000"]; 
