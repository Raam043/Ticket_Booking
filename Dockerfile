FROM nginx
COPY ./index.html /usr/share/nginx/html
COPY ./app.js /usr/share/nginx/html
