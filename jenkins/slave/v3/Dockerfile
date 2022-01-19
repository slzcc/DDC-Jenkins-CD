FROM docker:20.10.8 as DockerCli

FROM slzcc/sshd:ubuntu-20.04

ADD https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz /usr/bin/

COPY slave.jar /usr/share/jenkins/slave.jar

COPY jenkins-slave /usr/local/bin/jenkins-slave

WORKDIR /home/jenkins

ADD https://mirror.shileizcc.com/JDK/jdk-8u201-linux-x64.tar.gz /

RUN ln -sf /jdk1.8.0_201 /usr/local/jdk &&  \
    ln -sf /jdk1.8.0_201/bin/java /usr/bin/

COPY --from=DockerCli /usr/local/bin/docker /usr/local/bin
COPY --from=DockerCli /usr/local/bin/ctr /usr/local/bin

ENV LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    LANG=C.UTF-8 \
    TZ=Asia/Shanghai \
    JAVA_HOME=/usr/local/jdk \
    JAVA_BIN=/usr/local/jdk/bin \
    JRE_HOME=/usr/local/jdk/jre

ENTRYPOINT ["/bin/sh" "-c" "/usr/local/bin/jenkins-slave"]