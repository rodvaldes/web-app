FROM aliakhtar/jdk:jdk-8u161-linux-x64
MAINTAINER Rodrigo Valdés <rodrigovaldes@gmail.com>

#COPY ./software/jdk-8u271-linux-x64.rpm .
#RUN apt-get update \
#    && apt-get install -y rpm \
#    && date \
#    && pwd \
#    && ls -l \
#    && rpm -Uvh jdk-8u271-linux-x64.rpm \
#    && java -version

EXPOSE 18082
ADD /target/web-spring-demo-0.1.jar web-spring-demo-0.1.jar
ENTRYPOINT ["java","-XX:+UnlockCommercialFeatures","-XX:+FlightRecorder","-XX:StartFlightRecording=duration=60s,filename=flight-record.jfr","-jar","web-spring-demo-0.1.jar"]
