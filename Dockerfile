FROM openjdk:17-jdk-alpine
VOLUME /tmp
WORKDIR /app
COPY target/*.jar app.jar
entrypoint ["java", "-jar", "target/ecommerce-backend-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
# CMD ["java", "-jar", "target/ecommerce-backend-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=test"]
#"--spring.profiles.active=test"
