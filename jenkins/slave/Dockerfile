FROM registry.aliyuncs.com/slzcc/jenkins-slave-dind-java-maven
ADD script/slave.sh /home/jenkins/
WORKDIR /home/jenkins
RUN curl -o /usr/local/docker-compse https://github.com/docker/compose/releases/download/1.11.2/docker-compose-Linux-x86_64 && \
    chmod +x /usr/local/docker-compse 
CMD /home/jenkins/slave.sh && /usr/sbin/sshd -D 
