FROM openjdk:11
COPY spring-petclinic/target/ /usr/src/myapp/
WORKDIR /usr/src/myapp
CMD ["java", "-jar", "/usr/src/myapp/spring-petclinic-2.5.0-SNAPSHOT.jar"]
