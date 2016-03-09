docker run -d -p 80:80 -v /home/core/share/containers/nginx:/usr/share/nginx/html \
    -v /home/core/share/containers/nginx/conf:/usr/share/nginx \
    alpine-nginx
