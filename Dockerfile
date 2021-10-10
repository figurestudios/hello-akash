FROM node:alpine
# This line basically says 'we need to use this light-weight version of Linux which has Node pre-installed'
EXPOSE 3000
# This line opens port 3000
COPY . /app
# This line copies everything from the directory (.) in to the folder (/app)
WORKDIR /app
# This line says that we want to run all commands within the folder (/app)
RUN npm install express
# This line installs the node package express. This is why it's important to write down all packages you're using. Sometimes you'll need to save the specific versions when you're installing packages too!
CMD [ "node", "main.js" ]
# This line runs the command 'node main.js'