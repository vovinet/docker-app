FROM alpine:latest
RUN apk add nginx
RUN mkdir /var/www/docker-app
COPY docker-app.conf /etc/nginx/http.d/default.conf
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]
