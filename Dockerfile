FROM vulnerables/web-dvwa

COPY superreader /home
COPY apache2.conf /etc/apache2/apache2.conf

RUN chown root /home/superreader
RUN chmod 755 /home/superreader
RUN chmod u+s /home/superreader

RUN mkdir /tmp/premium
RUN mv /var/www/html/* /tmp/premium
RUN mv /tmp/premium /var/www/html
RUN chown www-data:www-data -R /var/www/html/premium

RUN apt-get update
RUN apt-get install wget netcat sudo -y

RUN useradd -s /bin/bash -d /home/vivek/ -m -G sudo vivek
RUN echo "vivek:password123" | chpasswd


