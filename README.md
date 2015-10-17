# MeteorD - Docker Runtime for Meteor Apps

### Credits

This solution is based on https://github.com/meteorhacks/meteord. Most important difference is that my meteord
image contains a pre-installed version of Meteor. This way you don't have to download and install Meteor everytime
you build your application image. This saves time, especially in a Continuous Integration environment.
Secondly, it allows for stable and reproducable images. You can rely on the version of Meteor inside the image.

### Available Versions
The meteord image uses the same version as the version of Meteor it contains.

- latest (currently 1.2.0.2)
- 1.2.0.2

### Build a Docker image for your app

With this method, your app will be converted into a Docker image. Then you can simply run that image.  

For that, you can use `jeroenpeeters/meteord:1.2.0.2` as your base image. Magically, that's only you've to do. Here's how to do it.

Add following `Dockerfile` into the root of your app:

~~~shell
FROM jeroenpeeters/meteord:1.2.0.2
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
