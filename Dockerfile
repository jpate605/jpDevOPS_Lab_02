FROM openjdk:17
EXPOSE 9090
ADD target/devOps-lab03.jar devOps-lab03.jar
ENTRYPOINT ["java", "-jar", "/devOps-lab03.jar"]