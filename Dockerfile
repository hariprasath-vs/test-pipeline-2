# Use a base image that has Java installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file into the container
COPY  target/my-web-app-1.0-SNAPSHOT.war /app/my-app.war

# Expose the port the app runs on (if needed)
EXPOSE 8080

# Command to run the WAR file
CMD ["java", "-jar", "/app/my-app.war"]
