FROM nginx

# remove Nginx's samples defaults
RUN rm -f /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html
RUN mkdir /etc/nginx/logs

# copy real application's configuration
COPY nginx.conf /etc/nginx/conf.d/

# copy production-ready static assets
COPY build/ /usr/share/nginx/nps-frontend

EXPOSE 80/tcp/
EXPOSE 80/udp/
