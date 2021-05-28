# Twitch-Miner

Docker version of [Tkd-Alex/Twitch-Channel-Points-Miner-v2](https://github.com/Tkd-Alex/Twitch-Channel-Points-Miner-v2).
This can be run with a docker-compose definition.

The following file is mounted :

- main.py : this is your starter script with your configuration

These folders are mounted :

- analytics : to save the analytics data
- cookies : to provide login information
- logs : to keep logs outside of container

```yml
version: "3.9"

services:
  miner:
    image: mrcraftcod/twitch-miner
    tty: true
    environment:
      - TERM=xterm-256color
    volumes:
      - ./analytics:/usr/src/app/analytics
      - ./cookies:/usr/src/app/cookies
      - ./logs:/usr/src/app/logs
      - ./main.py:/usr/src/app/main.py:ro
    ports:
      - "5000:5000"
```
