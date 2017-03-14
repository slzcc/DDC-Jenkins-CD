FROM registry.aliyuncs.com/slzcc/jenkins-slave-dind-java-maven
ADD script/slave.sh /home/jenkins/
WORKDIR /home/jenkins
CMD /home/jenkins/slave.sh && /usr/sbin/sshd -D 
