FROM nginx:1.18.0
WORKDIR /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/
EXPOSE 80