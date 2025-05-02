FROM nginx:alpine

COPY web-content/index.html /usr/share/nginx/html/index.html
COPY run-tests.sh /run-tests.sh

RUN chmod +x /run-tests.sh
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]




#FROM nginx:alpine
#COPY index.html /usr/share/nginx/html/index.html
#EXPOSE 80
