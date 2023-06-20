#FROM adoptopenjdk/openjdk11:alpine-jre
FROM openjdk:11.0.16

ADD target/spring-boot-helloworld-*-SNAPSHOT.jar /applications/spring-boot-helloworld.jar

ENTRYPOINT ["/opt/java/openjdk/bin/java -jar /applications/spring-boot-helloworld.jar --server.port=80"]
