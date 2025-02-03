# Use official OpenJDK as base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file into the container (build your Spring Boot app first)
COPY target/demo-0.0.1-SNAPSHOT.jar

# Expose the port your app will run on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
