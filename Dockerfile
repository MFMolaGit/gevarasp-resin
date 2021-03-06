FROM resin/rpi-raspbian:wheezy

COPY raspberrypi.gpg.key /key/
RUN echo 'deb http://archive.raspberrypi.org/debian/ wheezy main' >> /etc/apt/sources.list.d/raspi.list && \
    echo oracle-java8-jdk shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-key add /key/raspberrypi.gpg.key

RUN apt-get update && \
    apt-get -y install oracle-java8-jdk && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    apt-get install maven

COPY . /usr/src/app/

echo 'javac -classpath .:classes:/opt/pi4j/lib/'*' /usr/src/app/src/main/java/com/GevaRaspResin.java'
RUN mvn compile package

CMD ["/bin/bash", "/usr/src/app/run.sh"]
