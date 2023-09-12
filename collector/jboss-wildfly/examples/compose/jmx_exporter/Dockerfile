FROM curlimages/curl:7.82.0 as curler
ARG JMX_PROM_VERSION=0.20.0
USER root

RUN curl -L \
    --output /jmx_prometheus_javaagent.jar \
    https://repo.maven.apache.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/${JMX_PROM_VERSION}/jmx_prometheus_javaagent-${JMX_PROM_VERSION}0.20.0.jar"

RUN curl -L -s \
    "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.53.0/otelcol-contrib_0.53.0_linux_amd64.tar.gz" | \
    tar -xvz -C /

FROM ibmjava:8-jre
WORKDIR /

COPY --from=curler /jmx_prometheus_javaagent.jar /opt/opentelemetry-jmx-metrics.jar
COPY --from=curler /otelcol-contrib /otelcol-contrib

ENTRYPOINT [ "/otelcol-contrib" ]
CMD ["--config", "/etc/otel/config.yaml"]