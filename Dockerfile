FROM fabiocicerchia/nginx-lua:ubuntu

RUN apt-get update
RUN apt-get install -y wget python2.7 xz-utils xdg-utils libnss3
RUN apt-get clean

RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | python2.7 -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
