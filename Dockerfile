FROM openjdk:8-jdk
COPY target/*.jar test.jar
ENV PORT 5000
EXPOSE $PORT
ENTRYPOINT ["java","-Dserver.port=${PORT}","-jar","test.jar"]
 
