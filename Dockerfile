FROM centos:latest

WORKDIR '/app'

#COPY ./jdk-8u221/jdk-8u221-linux-x64.rpm ./

RUN mkdir -p /usr/java/jdk1.8.0_221-amd64

RUN curl -fsSL 'https://blog.forsre.com/java/jdk-8u221-linux-x64.tar.gz' | tar xzf - -C /usr/java/jdk1.8.0_221-amd64

#RUN yum localinstall jdk-8u221-linux-x64.rpm -y

ENV JAVA_HOME /usr/java/jdk1.8.0_221-amd64/jdk1.8.0_221/bin

ENV PATH ${PATH}:/usr/java/jdk1.8.0_221-amd64/jdk1.8.0_221/bin

RUN javac -version

ENV MAVEN_VERSION 3.3.9

RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven

COPY src ./src/
COPY ./pom.xml ./
COPY target ./target/

EXPOSE 80

ENTRYPOINT ["sh", "-c", "java -jar ./target/springbootvalidation-0.0.1-SNAPSHOT.jar"]

