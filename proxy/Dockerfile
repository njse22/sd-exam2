FROM nginx:mainline-alpine

COPY init.sh /init.sh
ENTRYPOINT ["/bin/sh", "init.sh"]
CMD ["nginx", "-g", "daemon off;"]