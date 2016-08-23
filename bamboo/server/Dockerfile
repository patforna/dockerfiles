#
# Bamboo Version 5.12.2.1
#
FROM java:8
MAINTAINER Patric Fornasier "patric.fornasier@gmail.com"

ENV BAMBOO_HOME /home/bamboo

# bamboo ui / remote agent server
EXPOSE 8085
EXPOSE 54663

# install
RUN mkdir -p $BAMBOO_HOME
COPY atlassian-bamboo-5.12.2.1.tar.gz /tmp
RUN tar xzf /tmp/atlassian-bamboo-5.12.2.1.tar.gz -C /opt
RUN rm /tmp/atlassian-bamboo-5.12.2.1.tar.gz

CMD /opt/atlassian-bamboo-5.12.2.1/bin/start-bamboo.sh -fg
