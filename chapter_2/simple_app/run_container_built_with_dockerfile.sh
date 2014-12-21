sudo docker build -t secrets .
sudo docker run --rm --name secret-app -it -p 8000:8000 -v `pwd`:/app secrets
