FROM java:8
EXPOSE 18082
ADD /target/web-spring-demo-0.1.jar web-spring-demo-0.1.jar
ENTRYPOINT ["java","-jar","web-spring-demo-0.1.jar"]
