sudo docker run --rm --name secret-app -v `pwd`:/app -it -p 8000:8000 -w /app python:2.7 ./setup.sh
