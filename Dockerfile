FROM openjdk:17
EXPOSE 9090
COPY target/devops-lab03.jar devops-lab03.jar
ENTRYPOINT ["java", "-jar", "/devops-lab03.jar"]