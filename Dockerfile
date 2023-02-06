FROM openjdk:11-jre-slim
# Set the working directory in the container to /app
WORKDIR /app

# Copy the jar file to the container
COPY . .
COPY target/jenkins-demo-0.0.1-SNAPSHOT.jar /app

# Run the jar file
CMD ["java", "-jar", "jenkins-demo-0.0.1-SNAPSHOT.jar"]
