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
| `-v /config` | Configuration files for AMTD. |
| `-v /import` | Place ROMs to be processed in this directory |
| `-v /output` | ROMs that have been processed will end up here |
| `-e AutoStart=true` | true = Enabled :: Runs script automatically on startup |

### docker

```
docker create \
  --name=hascheevos \
  -v /path/to/config/files:/config \
  -v /path/to/rom_import_folder:/import \
  -v /path/to/rom_output_folder:/output \
  -e PUID=1000 \
  -e PGID=1000 \
  -e AutoStart=true \
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
      - /path/to/rom_import_folder:/import
      - /path/to/rom_output_folder:/output
    environment:
      - PUID=1000
      - PGID=1000
      - AutoStart=true
    restart: unless-stopped
```

<br />
<br />
  
 
# Credits
- [hascheevos](https://github.com/meleu/hascheevos)
