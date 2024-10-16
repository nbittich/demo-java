FROM maven:3.9.9-ibm-semeru-21-jammy

WORKDIR /app

COPY pom.xml pom.xml
COPY src src

RUN mvn clean install 

ENTRYPOINT ["java","-jar", "target/demo-java.jar"]
