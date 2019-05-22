# base image
FROM node

#set working directory
RUN mkdir /usr/src/app
#copy all files from current directory to docker
COPY . /usr/src/app

WORKDIR /usr/src/app
# add '/usr/src/app/node_modules/.bin' to $PATH
ENV PATH /user/src/app/node_modules/.bin:$PATH

RUN yarn

CMD ["npm", "start"]