FROM openjdk:11-jre-slim

COPY ./target/vprofile-vp-app.jar /opt/vprofile/

WORKDIR /opt/vprofile

CMD ["java", "-jar", "vprofile-vp-app.jar"]

EXPOSE 8080
