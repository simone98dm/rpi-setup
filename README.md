# rpi-setup
Raspberry Pi 4 server setup docker compose

# Before run
Remember to change the password from 'changeme' to whatever you want

## Volumes

Create volume for the docker containers:
```
$ sudo docker volume create --name=grafana-volume
$ sudo docker volume create --name=influxdb-volume
```

## Configurations

Fix telegraf `telegraf.conf` if ip and influxdb user:pass are correct
