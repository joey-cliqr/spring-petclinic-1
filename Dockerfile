FROM anapsix/alpine-java
LABEL maintainer="shanem@liatrio.com"
COPY /var/jenkins_home/workspace/PetClinic-C3-Pipeline-Demo/target/spring-petclinic-2.0.0.jar /home/spring-petclinic-1.5.1.jar
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]

