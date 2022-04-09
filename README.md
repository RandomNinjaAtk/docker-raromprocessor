# RAROMProcessor
[![Docker Build](https://img.shields.io/docker/cloud/automated/randomninjaatk/hascheevos?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Docker Pulls](https://img.shields.io/docker/pulls/randomninjaatk/hascheevos?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Docker Stars](https://img.shields.io/docker/stars/randomninjaatk/hascheevos?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Docker Hub](https://img.shields.io/badge/Open%20On-DockerHub-blue?style=flat-square)](https://hub.docker.com/r/randomninjaatk/hascheevos)
[![Discord](https://img.shields.io/discord/747100476775858276.svg?style=flat-square&label=Discord&logo=discord)](https://discord.gg/JumQXDc "realtime support / chat with the community." )

[RAROMProcessor](https://github.com/RandomNinjaAtk/docker-hascheevos) is a Docker container that is used to orgainze/process/verify/dedupe/scrape a ROM library in an automated method by matching ROMs to [RetroAchievement](https://retroachievements.org). This was inspired by other projects such as: [hascheevos](https://github.com/meleu/hascheevos) 

## Instructions/Usage Guidelines

The script must run one time to generate the platform input folders:  ```/input/<platform_rom_folder>```

With AutoStart enabled, all you have to do is copy/move your ROMs into the ```/input/<platform_rom_folder>``` volume. 

The script will then automatically process all of the files in the volume, by matching/validating them against the [RetroAchievements](https://retroachievements.org) DB (Hash List) using the official [RAHasher](https://github.com/RetroAchievements/RALibretro/releases) applicatoin via a automated script process.

Then the files will be processed using [skyscraper](https://github.com/muldjord/skyscraper) to gather/download metadata from [screenscraper](https://screenscraper.fr/) and saved into the ```/output``` volume.

Lastly, ROMs that have no metadata will be removed from the final ```/output``` list/directories. This will ensure a completely clean library.

FEAR NOT, all ROMs that are processed are backed up to the ```/backup``` volume. This will allow you to verify the end result before deciding to remove the original data used for import/processing.

## Supported ROM Platforms
- Sega Mega Drive (Tested)
- Nintendo 64 (Tested)
- Super Nintendo Entertainment System (Tested)
- GameBoy (Tested)
- GameBoy Advance (Tested)
- GameBoy Color (Tested)
- Nintendo Entertainment System (Tested)
- PC Engine
- Sega CD
- Sega 32X
- Sega Master System
- PlayStation
- Atari Lynx
- NeoGeo Pocket [Color]
- Game Gear (Tested)
- Atari Jaguar
- Nintendo DS
- Pokemon Mini
- Atari 2600 (Tested)
- Arcade
- VirtualBoy (Tested)
- SG-1000
- ColecoVision
- Atari 7800  (Tested)
- WonderSwan [Color]

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
| `-e DeDupe=false` | true = Enabled :: This setting further reduces the final ROMs list per platrom, by remving duplicates witht he Priority of: USA > Europe > Janpan, and then by shortest filename when multiples exist |
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
  -e DeDupe=false \
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
      - DeDupe=false
      - ScreenscraperUsername=Username
      - ScreenscraperPassword=Password
    restart: unless-stopped
```
 
# Credits
- [RetroAchievements](https://retroachievements.org) (Used for validation)
- [RAHasher](https://github.com/RetroAchievements/RALibretro/releases) (Used for Hashing)
- [hascheevos](https://github.com/meleu/hascheevos) (Used for inspiration)
- [skyscraper](https://github.com/muldjord/skyscraper)
- [screenscraper](https://screenscraper.fr/) 
