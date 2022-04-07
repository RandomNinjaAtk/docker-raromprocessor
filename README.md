# docker-hascheevos
[![Docker Build](https://img.shields.io/docker/cloud/automated/randomninjaatk/hascheevos?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Docker Pulls](https://img.shields.io/docker/pulls/randomninjaatk/hascheevos?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Docker Stars](https://img.shields.io/docker/stars/randomninjaatk/hascheevos?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Docker Hub](https://img.shields.io/badge/Open%20On-DockerHub-blue?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Discord](https://img.shields.io/discord/747100476775858276.svg?style=flat-square&label=Discord&logo=discord)](https://discord.gg/JumQXDc "realtime support / chat with the community." )

[hascheevos](https://github.com/meleu/hascheevos) is a way to check if your ROM is OK for RetroAchievement and this is a docker to further automate using hascheevos.

## Supported Architectures

The architectures supported by this image are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | latest |

## Version Tags

| Tag | Description |
| :----: | --- |
| latest | Newest release code |

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| --- | --- |
| `-e PUID=1000` | for UserID - see below for explanation |
| `-e PGID=1000` | for GroupID - see below for explanation |
| `-v /config` | Configuration files for hascheevos. |
| `-v /cache` | cache location for skyscraper. |
| `-v /input` | Place ROMs to be processed in this directory |
| `-v /backup` | Processed ROMs are backed up to this directory |
| `-v /output` | ROMs that have been processed will end up here |
| `-e AutoStart=true` | true = Enabled :: Runs script automatically on startup |
| `-e ScriptInterval=1h` | When AutoStart is enabled, script will loop indefinitely, this allows the script to pause between loops, via sleep command |
| `-e ScreenscraperUsername=Username` | Username for https://screenscraper.fr/ |
| `-e ScreenscraperPassword=Password` | Password for https://screenscraper.fr/ |

### docker

```
docker create \
  --name=hascheevos \
  -v /path/to/config/files:/config \
  -v /path/to/skyscraper_cache:/cache \
  -v /path/to/rom_input_folder:/input \
  -v /path/to/rom_backup_folder:/backup \
  -v /path/to/rom_output_folder:/output \
  -e PUID=1000 \
  -e PGID=1000 \
  -e AutoStart=true \
  -e ScriptInterval=1h \
  -e ScreenscraperUsername=Username \
  -e ScreenscraperPassword=Password \
  --restart unless-stopped \
  randomninjaatk/hascheevos 
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
version: "2.1"
services:
  amtd:
    image: randomninjaatk/hascheevos 
    container_name: hascheevos
    volumes:
      - /path/to/config/files:/config
      - /path/to/skyscraper_cache:/cache
      - /path/to/rom_input_folder:/input
      - /path/to/rom_backup_folder:/backup
      - /path/to/rom_output_folder:/output
    environment:
      - PUID=1000
      - PGID=1000
      - AutoStart=true
      - ScriptInterval=1h
      - ScreenscraperUsername=Username
      - ScreenscraperPassword=Password
    restart: unless-stopped
```

<br />
<br />
  
 
# Credits
- [hascheevos](https://github.com/meleu/hascheevos)
