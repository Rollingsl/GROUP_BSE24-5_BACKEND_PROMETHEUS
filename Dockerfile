FROM prom/prometheus:v2.54.0

COPY prometheus.yml /etc/prometheus/prometheus.yml


ARG TARGET_URL=https://group-bse24-5-backend.onrender.com/metrics

EXPOSE 9090

ENTRYPOINT ["prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--web.enable-lifecycle"]


