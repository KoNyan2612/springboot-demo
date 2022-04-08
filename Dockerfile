FROM openjdk:11
WORKDIR /myapp
COPY target/*.jar /myapp/app.jar
EXPOSE 8081
CMD ["java","-jar","app.jar"]