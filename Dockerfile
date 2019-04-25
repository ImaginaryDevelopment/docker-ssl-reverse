FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./start-nginx.sh /etc/nginx
COPY ./cert.crt /etc/nginx/server.crt
COPY ./key.key /etc/nginx/server.key
RUN chmod +x /etc/nginx/start-nginx.sh
EXPOSE 443
CMD ["/etc/nginx/start-nginx.sh"]
