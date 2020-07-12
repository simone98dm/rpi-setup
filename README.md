# rpi-setup
Raspberry Pi 4 server setup docker compose. 
This compose was tested on RaspberryPi 4 (4gb), the avg temperature is around 50° C.

# Before run
Set static IP (for istance 192.168.1.100)
Remember to change the password from 'changeme' to whatever you want

## Volumes

Create volume for the docker containers:
```
$ sudo docker volume create --name=grafana-volume
$ sudo docker volume create --name=influxdb-volume
```

## Configurations

Fix telegraf `telegraf.conf` if ip and influxdb user:pass are correct
