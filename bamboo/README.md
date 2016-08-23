# Bamboo Docker Images

## Server

     docker run -p 8085:8085 -p 54663:54663 patforna/bamboo-server

## Agent

    docker run -e SERVER_URL=... -e SECURITY_TOKEN=... patforna/bamboo-agent

For example:

     docker run -e SERVER_URL=http://192.168.1.104:8085 -e SECURITY_TOKEN=75a2dc47353b134a3bef904f2507472e4e2052fb patforna/bamboo-agent

## Using Data Container

Create data container (using same image so that all containers are using layers in common, saving disk space):

     docker create -v /home/bamboo --name bamboo-data patforna/bamboo-server /bin/true

Then mount the volume in the server container:

     docker run --volumes-from bamboo-data -p 8085:8085 -p 54663:54663 patforna/bamboo-server

### Backing up data

    docker run --rm --volumes-from bamboo-data -v $(pwd):/backup patforna/bamboo-server tar cvf /backup/backup.tar /home/bamboo

## TODO

* use jdk-apline image to reduce file size
* set timezone (`-e TZ=Europe/Zurich`)
* increase jvm heap (`-e JAVA_OPTS=-Xmx1024m`)
