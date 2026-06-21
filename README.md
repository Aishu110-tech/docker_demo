To build docker image run the following command
     docker build -t node-app:1.0 .

To create the container
     docker run -d -p 3000:3000 node-app:1.0

You can access the application using port 3000

docker build -t node-app:v1 .

docker run -d -p 3001:3000 --name node-container2 node-app:v1

 
