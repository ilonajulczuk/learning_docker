upstream app  {
    server <host>;
}

server {
    listen 80;
    server_name myapp.dockerbash.com;

    location / {
        proxy_pass  http://app;

        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    }
}
