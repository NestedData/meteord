## MeteorD - Docker Runtime for Meteor Apps 

This is a derivative of some work by meteorhacks. Our app is located in a different place and I wasn't able to get stock MeteorD working, so I've removed some stuff I didn't want and just tried to get it to work. Ideally we will go back to a fork of meteord that just varies on internal app location.

The only feature of this package it to build a docker image from a meteor applications source available at /app of a repo.

### 1. Build a Docker image for your app

With this method, your app will be converted into a Docker image. Then you can simply run that image.  

For that, you can use `meteorhacks/meteord` as your base image. Magically, that's only you've to do. Here's how to do it.

Add following `Dockerfile` into the root of your app:

~~~shell
FROM nesteddata/meteord
MAINTAINER Your Name
~~~

Then you can build the docker image with:

~~~shell
docker build -t yourname/app .
~~~

Then you can run your meteor image with

~~~shell
docker run -d \
    -e ROOT_URL=http://yourapp.com \
    -e MONGO_URL=mongodb://url \
    -e MONGO_OPLOG_URL=mongodb://oplog_url \
    -p 8080:80 \
    yourname/app 
~~~

Then you can access your app from the port 8080 of the host system.
