# Pull base image 
From tomcat:jre17 

# Maintainer "test@test.com"
COPY ./webapp.war /usr/local/tomcat/webapps
FROM java:8
COPY webapp/target/webapp.war app.war
ENTRYPOINT ["java","-jar","/app.war"]
