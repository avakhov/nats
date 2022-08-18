FROM alpine:3.16.2
ENV NATS_SERVER_VERSION 2.8.4
ENV NATS_CLI_VERSION 0.0.33
RUN apk add --no-cache wget unzip bash
RUN wget https://github.com/nats-io/nats-server/releases/download/v${NATS_SERVER_VERSION}/nats-server-v${NATS_SERVER_VERSION}-linux-amd64.zip -O /tmp/nats-server.zip && \
  cd /tmp && \
  unzip /tmp/nats-server.zip && \
  mv /tmp/nats-server-v${NATS_SERVER_VERSION}-linux-amd64/nats-server /bin/
RUN wget https://github.com/nats-io/natscli/releases/download/v${NATS_CLI_VERSION}/nats-${NATS_CLI_VERSION}-linux-amd64.zip -O /tmp/nats.zip && \
  cd /tmp && \
  unzip /tmp/nats.zip && \
  mv /tmp/nats-${NATS_CLI_VERSION}-linux-amd64/nats /bin/

