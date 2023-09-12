FROM curlimages/curl:7.82.0 as curler
ARG JMX_PROM_VERSION=0.20.0
USER root

RUN curl -L \
    --output /jmx_prometheus_javaagent.jar \
    "https://repo.maven.apache.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/${JMX_PROM_VERSION}/jmx_prometheus_javaagent-${JMX_PROM_VERSION}.jar"

# =====================Java App===========================

# Use the official Maven/Java 11 base image for the build stage
FROM maven:3.8.1-jdk-11 as builder

# Set the current working directory inside the image
WORKDIR /app

# Copy the Maven pom.xml (and pom.properties if they exist)
COPY pom.xml ./

# Copy the application's sources and build the application
COPY src ./src
RUN mvn package -DskipTests

# For the deployment stage use Tomcat
FROM tomcat:9-jdk11-openjdk-slim as deployment

# Remove the default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the built war file to Tomcat's webapps directory
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/demo.war

# Set the required environment variables (optional and can be removed if not needed)
ENV JAVA_OPTS="-Dspring.profiles.active=prod"

# Tomcat will start automatically, no need for CMD

# ===================Wildfly============================

FROM jboss/wildfly:latest

COPY --from=deployment /usr/local/tomcat/webapps/demo.war /opt/jboss/wildfly/standalone/deployments/demo.war
COPY --from=curler /jmx_prometheus_javaagent.jar /opt/jmx_exporter/jmx_prometheus_javaagent-0.20.0.jar

ARG BOOTCLASS_PATH="-Xbootclasspath/a:"

RUN /opt/jboss/wildfly/bin/add-user.sh admin admin --silent

ARG JAVA_OPTS_1
ARG LOGMANAGER
ARG LOGMANAGER_JAR
ARG WILDLFY_COMMON_JAR

ENV JAVA_OPTS="${JAVA_OPTS}${JAVA_OPTS_1}${LOGMANAGER}${BOOTCLASS_PATH}${JBOSS_HOME}${LOGMANAGER_JAR}${JBOSS_HOME}${WILDLFY_COMMON_JAR}"


ENTRYPOINT /opt/jboss/wildfly/bin/standalone.sh \  
    -b=0.0.0.0 \
    -bmanagement=0.0.0.0 \
    -Djboss.server.default.config=standalone-full-ha.xml \
    -Djava.net.preferIPv4Stack=true
