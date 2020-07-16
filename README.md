# Raspberry Pi server setup

Raspberry Pi 4 server setup docker compose.

This compose was tested on RaspberryPi 4 (4gb) with Raspberrypi OS

# Before run

## Configurations

1. Set static IP (for instance 192.168.1.100)
2. Install [docker](https://docs.docker.com/engine/install/debian/)
3. Change the password from 'changeme' and 'P4\$\$W0rD!' to whatever you want
4. On `telegraf.conf`, change ip and influxdb user:pass
5. Check if transmission configs are good to be used

N.B: SqlServer needs a strong password (with special chars, number and capital letter)

## Volumes

Create volume for the docker containers:

```bash
$ sudo docker volume create --name=grafana-volume
$ sudo docker volume create --name=influxdb-volume
```

# Run

Run this command on your raspberrypi

```bash
$ sudo docker-compose up -d
$ docker exec tor-gateway cat /var/lib/tor/onion_services/app/hostname
```
