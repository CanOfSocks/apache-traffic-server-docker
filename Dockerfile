FROM debian:stable-slim

RUN apt-get update && \
    apt-get install trafficserver -y && \
    apt-get clean -y

EXPOSE 8080

CMD ["/usr/bin/traffic_manager"]
