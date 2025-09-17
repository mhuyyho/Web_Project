# Sử dụng OpenJDK 11 với Maven để build
FROM maven:3.8.4-openjdk-11-slim AS build

# Set working directory
WORKDIR /app

# Copy pom.xml và download dependencies
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy source code
COPY src ./src

# Build ứng dụng
RUN mvn clean package -DskipTests

# Sử dụng Tomcat 9 với JRE 11 để chạy ứng dụng
FROM tomcat:9.0-jre11-slim

# Xóa các ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file từ build stage
COPY --from=build /app/target/ch07cart.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Cấu hình JVM options cho Jakarta EE
ENV JAVA_OPTS="-Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms512m -Xmx1024m"

# Start Tomcat
CMD ["catalina.sh", "run"]