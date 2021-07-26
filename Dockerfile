FROM python:latest

RUN apt-get -y update

RUN pip install requests

RUN apt-get -y install apache2

RUN a2enmod cgid

COPY weather.py /usr/lib/cgi-bin/weather.py

RUN chmod 755 /usr/lib/cgi-bin/weather.py

EXPOSE 80

CMD apache2ctl -D FOREGROUND
