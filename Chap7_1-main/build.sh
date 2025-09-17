#!/bin/bash

# Build script for Render deployment
echo "Building CD Cart Application..."

# Build with Maven
mvn clean package -DskipTests

echo "Build completed successfully!"
echo "WAR file location: target/ch07cart.war"