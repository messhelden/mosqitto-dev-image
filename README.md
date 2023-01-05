# mosqitto-dev-image

Mosquitto (MQTT) broker image with dummy credentials for local development and testing.

When building an image, you need to specify your desirable username and password:
```sh
docker build --no-cache --build-arg username=testuser --build-arg password=testpass -t mosqitto-dev-image .
```
