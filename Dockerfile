# Use an official OpenJDK runtime as a base image
FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

EXPOSE 8080

# Copy the packaged jar file into the container
COPY target/springboot-demo-0.0.1-SNAPSHOT.jar /app/springboot-demo-0.0.1-SNAPSHOT.jar

# Specify the command to run on container start
CMD ["java", "-jar", "springboot-demo-0.0.1-SNAPSHOT.jar"]
