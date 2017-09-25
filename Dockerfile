FROM node:4.2

RUN mkdir app
COPY . app
WORKDIR app

RUN npm install -g mean-cli bower gulp
RUN npm install -g grunt-cli
RUN bower install --allow-root

RUN npm install
ENV PORT 8080
EXPOSE 8080
CMD [ "npm", "start" ]

#How to build:
# git clone https://github.com/linnovate/mean
# cd mean
# docker build -t mean .

#How to run:
# docker pull mongo
# docker run -d --name db mongo
# docker run -p 3000:3000 --link db:db mean
