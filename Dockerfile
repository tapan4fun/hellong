FROM nginx:1.19.2-alpine
LABEL maintainer="tapan@tsamanta.in"
COPY nginx.conf /etc/nginx/nginx.conf
COPY . /src