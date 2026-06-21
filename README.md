To build docker image run the following command
     docker build -t node-app:1.0 .

To create the container
     docker run -d -p 3000:3000 node-app:1.0

You can access the application using port 3000
