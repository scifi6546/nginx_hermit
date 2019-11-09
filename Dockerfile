FROM nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf
expose 80
expose 443
CMD openssl req -x509 -newkey rsa:4096 -nodes -keyout key.pem -out cert.pem -days 20 -subj /CN=localhost

