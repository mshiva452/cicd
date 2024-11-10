# Set the working directory
WORKDIR /simple-react
# Copy the package.json and package-lock.json files
#COPY package*.json ./
# Install the dependencies
#RUN npm install
# Copy the app files
COPY . .
# Build the app
#RUN npm run build
# Expose the port
EXPOSE 3000
# Run the app
CMD [ "npm", "run", "start" ]
