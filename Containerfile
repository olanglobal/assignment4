FROM fedora:latest
RUN dnf -y upgrade
RUN dnf -y install tuxpaint 
RUN dnf -y install vim 
RUN dnf -y install httpd
COPY myinfo.html /var/www/html/
EXPOSE 80/tcp
ENTRYPOT /usr/sbin/httpd -DFOREGROUND



