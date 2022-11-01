FROM nginx
COPY ./index.html /usr/share/nginx/html
COPY ./main.js /usr/share/nginx/html
