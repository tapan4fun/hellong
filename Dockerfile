FROM node:latest as ngbuild
COPY . /src
WORKDIR /src
RUN npm install
RUN npm run build -- --prod

FROM nginx:1.19.2-alpine
LABEL maintainer="tapan@tsamanta.in"
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=ngbuild /src/dist/hellong /usr/share/nginx/html
EXPOSE 8080