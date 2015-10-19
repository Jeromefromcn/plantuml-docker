FROM tomcat:8-jre8
MAINTAINER Jerome Jiang "jeromefromcn@gmail.com"

# Graphviz
WORKDIR /usr/bin
RUN apt-get install Graphviz

ADD assets/ /app/
RUN chmod 755 /app/setup/install
RUN /app/setup/install
