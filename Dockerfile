FROM ubuntu:14.04
MAINTAINER erkan yanar <erkan.yanar@linsenraum.de>
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install python2.7 && apt-get clean

VOLUME /data
WORKDIR /data
COPY index.html /data/index.html
EXPOSE 80
CMD ["80"]
ENTRYPOINT ["python2.7","-m","SimpleHTTPServer"]
