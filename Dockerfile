FROM maven:3.8.7-amazoncorretto-17 AS builder
WORKDIR /app
COPY . .
RUN echo "=== Building project ==="
RUN mvn clean package -DskipTests
RUN echo "=== Checking JAR ==="
RUN ls -la target/
RUN find . -name "*.jar" -type f

FROM amazoncorretto:17-alpine
WORKDIR /app
COPY --from=builder /app/target/app.jar app.jar
RUN echo "=== JAR copied successfully ==="
RUN ls -la
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]