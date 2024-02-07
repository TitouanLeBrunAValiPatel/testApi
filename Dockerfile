FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY pom.xml .
COPY initdb.sql /docker-entrypoint-initdb.d/initdb.sql
RUN apk add --no-cache maven
RUN mvn dependency:go-offline -B
COPY . .
RUN mvn package
EXPOSE 8080
CMD ["java", "-jar", "target/ecommerce-backend-0.0.1-SNAPSHOT.jar"]
# CMD ["java", "-jar", "target/ecommerce-backend-0.0.1-SNAPSHOT.jar", "--spring.profiles.active=test"]
#"--spring.profiles.active=test"
