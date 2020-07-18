# cannot use FROM openjdk:8
# my local server is using openjdk 12 to build , it seems
# openjdk 8 does not work well to execute the java 8 code generated
# by openjdk:12

FROM openjdk:12
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]