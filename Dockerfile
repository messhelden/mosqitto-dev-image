FROM eclipse-mosquitto:2.0.15

ARG username
ARG password

LABEL maintainer="Comgy GmbH <devs@comgy.io>" \
      description="Mosquitto (MQTT) broker with dummy credentials for local development and testing" \
      username="$username" \
      password="$password"

COPY config /mosquitto/config

RUN mosquitto_passwd -c -b /mosquitto/config/mosquitto.passwd $username $password
