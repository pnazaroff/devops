FROM ubuntu


RUN apt update
RUN apt-get install nginx -y
RUN service nginx start
COPY ./default /etc/nginx/sites-available/default
RUN service nginx reload
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
