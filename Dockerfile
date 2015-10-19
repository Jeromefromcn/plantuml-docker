FROM tomcat:8-jre8
MAINTAINER Jerome Jiang "jeromefromcn@gmail.com"

# Graphviz
WORKDIR /usr/bin
RUN apt-get update && apt-get install -y Graphviz

ADD assets/ /app/
RUN chmod 755 /app/setup/install
RUN /app/setup/install
