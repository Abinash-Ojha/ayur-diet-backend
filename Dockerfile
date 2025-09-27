# Base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy Maven wrapper and pom.xml first (for caching)
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# Package dependencies
RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline

# Copy source code
COPY src ./src

# Build the jar
RUN ./mvnw package -DskipTests

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "target/webapp-0.0.1-SNAPSHOT.jar"]
