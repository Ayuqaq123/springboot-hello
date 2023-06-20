#FROM adoptopenjdk/openjdk11:alpine-jre
FROM openjdk:11.0.16

ADD target/spring-boot-helloworld-*-SNAPSHOT.jar /applications/spring-boot-helloworld.jar

#ENTRYPOINT ["/usr/local/openjdk-11/bin/java -jar /applications/spring-boot-helloworld.jar --server.port=80"]
#CMD ["java","-jar","/applications/spring-boot-helloworld.jar --server.port=8888"]
CMD ["java","-jar","/applications/spring-boot-helloworld.jar","--server.port=8888"]
