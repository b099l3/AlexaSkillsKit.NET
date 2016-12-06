docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker build -t app .
docker run -it -d -p 8000:5000 app
