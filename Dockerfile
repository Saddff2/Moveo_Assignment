FROM nginx:stable-alpine3.19

RUN echo '<center><h1>yo this is nginx</h1></center>' > /usr/share/nginx/html/index.html

