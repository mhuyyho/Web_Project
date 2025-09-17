# ----- Build stage (Maven + JDK 17) -----
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn -q -DskipTests clean package

# ----- Run stage (Tomcat 10 + JDK 17) -----
FROM tomcat:10.1-jdk17-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy WAR vừa build thành ROOT.war để chạy ở "/"
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Fix shutdown warnings by disabling shutdown port
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml

EXPOSE 8080
CMD ["catalina.sh","run"]
