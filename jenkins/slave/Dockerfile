FROM rastasheep/ubuntu-sshd:16.04
ADD script/slave.sh /home/jenkins/
COPY settings.xml /root/.m2/settings.xml
WORKDIR /home/jenkins
RUN apt-get install -y git unzip vim curl wget maven
RUN curl -sSL get.docker.com https://get.docker.com/ | sh;
RUN curl -o /usr/local/docker-compse https://github.com/docker/compose/releases/download/1.11.2/docker-compose-Linux-x86_64 && \
    chmod +x /usr/local/docker-compse
ENV JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre \
    JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
