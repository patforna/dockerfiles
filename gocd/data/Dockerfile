# Dockerfile for buidling a data only container for ThoughtWorks Go Server to store configuration, artifacts, and Go database (http://www.go.cd)
#
# http://github.com/patforna/docker/go-server-data

FROM busybox
MAINTAINER Patric Fornasier <patric.fornasier@gmail.com>

RUN mkdir -p /etc/go
RUN mkdir -p /var/lib/go-server/db
RUN mkdir -p /var/lib/go-server/artifacts

ADD log4j.properties /etc/go/

RUN chmod -R 777 /var/lib/go-server/artifacts
RUN chmod -R 777 /var/lib/go-server/db
RUN chmod -R 777 /etc/go

VOLUME /etc/go
VOLUME /var/lib/go-server/db
VOLUME /var/lib/go-server/artifacts
