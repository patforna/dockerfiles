#
# Bamboo Version 5.12.2.1
#
FROM java:8
MAINTAINER Patric Fornasier "patric.fornasier@gmail.com"

ENV BAMBOO_USER bamboo

# create bamboo user
RUN useradd --create-home --shell /bin/bash --comment "Bamboo User" $BAMBOO_USER

# install
COPY atlassian-bamboo-agent-installer-5.12.2.1.jar /home/$BAMBOO_USER

CMD su - $BAMBOO_USER -c "java -jar atlassian-bamboo-agent-installer-5.12.2.1.jar ${SERVER_URL}/agentServer/ -t ${SECURITY_TOKEN}"
