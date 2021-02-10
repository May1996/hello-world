FROM swr.cn-north-4.myhuaweicloud.com/joymo-common/openjdk:8-jdk-alpine

VOLUME /tmp
COPY  /target/demoapp.jar app.jar
ENV PORT 8080
EXPOSE $PORT
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/app.jar"]