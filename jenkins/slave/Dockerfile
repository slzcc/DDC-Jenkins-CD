FROM rastasheep/ubuntu-sshd:16.04
ADD script/slave.sh /home/jenkins/
COPY settings.xml /root/.m2/settings.xml
WORKDIR /home/jenkins
RUN apt-get install -y software-properties-common && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y --no-install-recommends openjdk-8-jre && \
    rm -rf /var/lib/apt/lists/* $$ \
    apt-get install -y git unzip vim curl wget maven
RUN curl -sSL get.docker.com https://get.docker.com/ | sh;
RUN curl -o /usr/local/docker-compse https://github.com/docker/compose/releases/download/1.11.2/docker-compose-Linux-x86_64 && \
    chmod +x /usr/local/docker-compse
