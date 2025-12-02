# Build stage
FROM maven:3.8.7-amazoncorretto-17 AS builder
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

# Run stage
FROM amazoncorretto:17-alpine
WORKDIR /app
# JAR will be named 'app.jar' because of <finalName>app</finalName>
COPY --from=builder /app/target/app.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]