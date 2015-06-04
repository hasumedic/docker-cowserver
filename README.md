# Introduction 
Little project to configure a very simple ruby app into a docker container. Based on the blogpost:
http://blog.codeship.com/automate-your-dev-workflow-with-docker/

# Building a docker image from command line

In order to build the docker's container image from the command line, run the following:

```
docker build -t <your_namespace>/cowserver .
```

It'll take a while the first time, since it needs to download the ruby docker image this project is based on.

The docker image will then be available for use in the container repository

```
docker images
```

# Running the container

To start the container, type the following:

```
docker run -p 8000:8000 <your_namespace>/cowserver
```

The container will start, waiting for connections

# Testing the app

To see the active containers, run:

```
docker ps
```

Here we can see where the app is being exposed. We can reach it via command line:

```
curl http://[IP_ADDRESS]:8000/
```

Or through the browser:

```
curl http://127.0.0.1:8000/
```