FROM aliakhtar/jdk:jdk-8u161-linux-x64
# TODO Reemplazar por una imagen confiable.
MAINTAINER Rodrigo Valdés <rodrigovaldes@gmail.com>

EXPOSE 18082
ADD /target/web-spring-demo-0.1.jar web-spring-demo-0.1.jar
ENTRYPOINT ["java","-XX:+UnlockCommercialFeatures","-XX:+FlightRecorder","-XX:StartFlightRecording=duration=60s,filename=flight-record.jfr","-jar","web-spring-demo-0.1.jar"]
# TODO Hacer esto opcional y parametrizable.
