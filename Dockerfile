# good to put solid version incase 'latest' messes with app
FROM node:10

# where our app will live in the conatiner 
WORKDIR /usr/src/app

# copy pckage.json and package-lock.json to working directory  
COPY package*.json ./
 
RUN npm install

# copy whatever is here (all files) into our container 
COPY . . 

# the port it runs on
EXPOSE 3000

# run the appv 
CMD ["npm", "start"]