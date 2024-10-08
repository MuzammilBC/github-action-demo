# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Copy the JAR file into the container at /usr/app
COPY --chmod=a+x .build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/ 

# Set the working directory in the container
WORKDIR /usr/app

# Run the JAR file
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
