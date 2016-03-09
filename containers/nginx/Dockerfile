FROM alpine:3.3
MAINTAINER Johnson Cheung

RUN apk --no-cache add nginx

#VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
#VOLUME /home/core/share/containers/nginx:/usr/share/nginx/html
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx/
VOLUME /etc/nginx/conf.d/

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]

# Expose the ports for nginx
