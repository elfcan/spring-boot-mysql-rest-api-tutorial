FROM nexus.kodgemisi.com:18444/alpine-oraclejdk8:latest
RUN apk update
VOLUME /tmp
ADD target/easy-notes-*.jar /opt/app.jar
RUN sh -c 'touch /opt/app.jar'
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx512m","-ea","-jar","/opt/app.jar"]
