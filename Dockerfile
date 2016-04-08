FROM couchdb:1.6

MAINTAINER tecnologia@ibtech.inf.br

RUN usermod -u 10100 \
 && groupmod -g 10100 \
 && sed -i 's/\[httpd\]/\[httpd\]\nenable_cors = true/g' /usr/local/etc/couchdb/local.ini \
 && printf "[cors]\norigins = *\n" >> /usr/local/etc/couchdb/local.ini
