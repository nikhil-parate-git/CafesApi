# Build stage
FROM maven:3.8.7-eclipse-temurin-17-alpine AS build
WORKDIR /workspace/app

# Copy Maven files
COPY pom.xml .
COPY src src

# Build application
RUN mvn clean package -DskipTests

# Package stage
FROM eclipse-temurin:17-alpine
WORKDIR /app

# Copy jar from build stage
COPY --from=build /workspace/app/target/*.jar app.jar

# Expose port
EXPOSE 8080

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]