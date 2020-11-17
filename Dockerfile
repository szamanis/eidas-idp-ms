FROM openjdk:8-jdk-alpine
MAINTAINER Nikos Triantafyllou
VOLUME /tmp
VOLUME /configEidas
ADD ./target/sealEidasIdp-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=container -jar /app.jar" ]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container","-jar","/app.jar"]
EXPOSE 8090
