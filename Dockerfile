# Building:     docker build -t centos-mysql .
# Running:      docker run -v /mnt:/mnt:ro centos-mysql <COMMAND>
# Interactive:  docker run -i -t -v /mnt:/mnt:ro centos-mysql bash

FROM blalor/centos

MAINTAINER Eemeli Kantola <eemeli.kantola@iki.fi>

RUN yum -y update
RUN yum -y install mysql-server
RUN yum -y install python-pip
RUN pip install PyMySQL
