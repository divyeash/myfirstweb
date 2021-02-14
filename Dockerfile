FROM ubuntu
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y  apache2
ADD . /var/www/html
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
ENV name newweb
