FROM nginx:mainline-alpine
COPY init.sh /init.sh
COPY ./nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT ["/bin/sh", "init.sh"]
CMD ["nginx", "-g", "daemon off;"]
