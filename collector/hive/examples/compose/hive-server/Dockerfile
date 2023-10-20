FROM curlimages/curl:7.82.0 as curler
ARG JMX_PROM_VERSION=0.20.0
USER root

RUN curl -L \
    --output /jmx_prometheus_javaagent.jar \
    "https://repo.maven.apache.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/${JMX_PROM_VERSION}/jmx_prometheus_javaagent-${JMX_PROM_VERSION}.jar"


# Using the base Hive image
FROM bde2020/hive:2.3.2-postgresql-metastore

# Copy the jmx_prometheus_javaagent jar and jmx_exporter.yaml config
COPY --from=curler /jmx_prometheus_javaagent.jar /opt/hive/
COPY jmx_exporter.yaml /opt/hive/conf/

# Append script to hive-env.sh
RUN echo 'if [ "$SERVICE" = "hiveserver2" ]; then' >>  /opt/hive/conf/hive-env.sh && \
    echo '  export HADOOP_CLIENT_OPTS="$HADOOP_CLIENT_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9005 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false -javaagent:/opt/hive/jmx_prometheus_javaagent.jar=9008:/opt/hive/conf/jmx_exporter.yaml -Dcom.sun.management.jmxremote.ssl=false"' >>  /opt/hive/conf/hive-env.sh && \
    echo 'fi' >>  /opt/hive/conf/hive-env.sh && \
    echo 'if [ "$SERVICE" = "metastore" ]; then' >>  /opt/hive/conf/hive-env.sh && \
    echo '  export HADOOP_OPTS="$HADOOP_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9025 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false -javaagent:/opt/hive/jmx_prometheus_javaagent.jar=9028:/opt/hive/conf/jmx_exporter.yaml -Dcom.sun.management.jmxremote.ssl=false"' >>  /opt/hive/conf/hive-env.sh && \
    echo 'fi' >>  /opt/hive/conf/hive-env.sh

EXPOSE 10000 8080 9005 9008 9025 9028

CMD ["/opt/hive/bin/hive", "--service", "hiveserver2"]
