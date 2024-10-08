# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# Set the working directory in the container
WORKDIR /usr/app

# Copy the JAR file into the container at /usr/app
COPY build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
