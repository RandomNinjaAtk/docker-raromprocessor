# RA ROM Processor
[![Docker Build](https://img.shields.io/docker/cloud/automated/randomninjaatk/raromprocessor?style=flat-square)](https://hub.docker.com/r/randomninjaatk/raromprocessor)
[![Docker Pulls](https://img.shields.io/docker/pulls/randomninjaatk/raromprocessor?style=flat-square)](https://hub.docker.com/r/randomninjaatk/raromprocessor)
[![Docker Stars](https://img.shields.io/docker/stars/randomninjaatk/raromprocessor?style=flat-square)](https://hub.docker.com/r/randomninjaatk/raromprocessor)
[![Docker Hub](https://img.shields.io/badge/Open%20On-DockerHub-blue?style=flat-square)](https://hub.docker.com/r/randomninjaatk/raromprocessor)


[RA ROM Processor](https://github.com/RandomNinjaAtk/docker-raromprocessor) is a Docker container that is used to aquire/orgainze/process/verify/dedupe/scrape a ROMs library automatically by matching ROMs to the [RetroAchievement.org](https://retroachievements.org) website Hash database. This was inspired by other projects such as: [hascheevos](https://github.com/meleu/hascheevos) 

[![RandomNinjaAtk/raromprocessor](https://raw.githubusercontent.com/RandomNinjaAtk/unraid-templates/master/randomninjaatk/img/raromprocessor.png)](https://github.com/RandomNinjaAtk/docker-raromprocessor)

## Instructions/Usage Guidelines

The script must run one time to generate the platform input folders:  ```/input/<platform_rom_folder>```

With AutoStart enabled, all you have to do is copy/move your ROMs into the ```/input/<platform_rom_folder>``` volume. 

The script will then automatically process all of the files in the volume, by matching/validating them against the [RetroAchievements](https://retroachievements.org) DB (Hash List) using the official [RAHasher](https://github.com/RetroAchievements/RALibretro/releases) applicatoin via a automated script process.

Then the files will be processed using [skyscraper](https://github.com/muldjord/skyscraper) to gather/download metadata from [screenscraper](https://screenscraper.fr/) and saved into the ```/output``` volume.

Lastly, ROMs that have no metadata will be removed from the final ```/output``` list/directories. This will ensure a completely clean library.

FEAR NOT, all ROMs that are processed are backed up to the ```/backup``` volume. This will allow you to verify the end result before deciding to remove the original data used for import/processing.

## Supported ROM Platforms
- Amiga (Tested - RA Unsupported Platform)
- Amstrad CPC (Tested)
- Apple II
- Arcade
- Atari 2600 (Tested)
- Atari 5200 (Tested - RA Unsupported Platform)
- Atari 7800  (Tested)
- Atari Jaguar (Tested)
- Atari Lynx (Tested)
- Atari ST (Tested - RA Unsupported Platform)
- ColecoVision (Tested)
- Commodore 64 (Tested - RA Unsupported Platform)
- Fairchild Channel F (Tested - RA Unsupported Platform)
- Intellivision (Tested)
- NEC TurboGrafx-16 (Tested - Unsupported by Skyscraper)
- Neo Geo CD (Tested - RA Unsupported Platform)
- Nintendo: 64 (Tested)
- Nintendo: DS
- Nintendo: GameBoy (Tested)
- Nintendo: GameBoy Advance (Tested)
- Nintendo: GameBoy Color (Tested)
- Nintendo: Nintendo Entertainment System (Tested)
- Nintendo: Pokemon Mini (Tested)
- Nintendo: Super Nintendo Entertainment System (Tested)
- Nintendo: VirtualBoy (Tested)
- Sega 32X (Tested)
- Sega Dreamcast
- Sega CD
- Sega Game Gear (Tested)
- Sega Mega Drive (Tested)
- Sega Master System (Tested)
- Sega Saturn
- SG-1000 (Tested)
- Sharp X68000 (Tested - RA Unsupported Platform)
- SNK Neo Geo Pocket (Tested)
- SNK Neo Geo Pocket Color (Tested)
- Magnavox Odyssey 2 (Tested - Unsupported by Skyscraper)
- MSX (Tested)
- MSX2 (Tested)
- PC Engine
- PlayStation
- PlayStation Portable
- Vectrex (Tested)
- WonderSwan (Tested)
- WonderSwan [Color] (Tested)
- ZX Spectrum (Tested - RA Unsupported Platform)

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
| `-e DeDupe=false` | true = Enabled :: This setting further reduces the final ROMs list per platrom, by removing duplicates with the priority of: USA > Europe > World > Japan, and then by shortest filename when multiples exist |
| `-e AquireRomSets=false` | true = Enabled :: Enabling this will have the script attempt to pull valid ROM sets from archive.org for processing :: Not all systems supported... |
| `-e ConcurrentDownloadThreads=5` | Number of concurrent threads to increase download speed... only aplicable if AquireRomSets is enabled (true) |
| `-e EnableUnsupportedPlatforms=true` | true = Enabled :: Enabling this will allow the script to import and scrape ROMs for platforms without RA hashes, no deduping/validation is performed |
| `-e ScrapeMetadata=false` | true = Enabled :: Enabling this will allow the script to process the ROMs with [skyscraper](https://github.com/muldjord/skyscraper) |
| `-e keepBackupsOfImportedRoms=true` | false = Enabled :: This setting will only keep a single copy of each ROM, reduces the required amount of storage space... |
| `-e skyscraperLanguagePreference=en` | Set to preferred language for Metadata, for more info visit: [skyscraper](https://github.com/muldjord/skyscraper/blob/master/docs/LANGUAGES.md#list-of-supported-languages) |
| `-e ScreenscraperUsername=Username` | Username for https://screenscraper.fr/ |
| `-e ScreenscraperPassword=Password` | Password for https://screenscraper.fr/ |

### docker

```
docker create \
  --name=raromprocessor \
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
  -e AquireRomSets=false \
  -e ConcurrentDownloadThreads=5 \
  -e EnableUnsupportedPlatforms=true \
  -e ScrapeMetadata=false \
  -e keepBackupsOfImportedRoms=true \
  -e ScreenscraperUsername=Username \
  -e ScreenscraperPassword=Password \
  -e skyscraperLanguagePreference=en \
  --restart unless-stopped \
  randomninjaatk/raromprocessor 
```


### docker-compose

Compatible with docker-compose v2 schemas.

```
version: "2.1"
services:
  raromprocessor:
    image: randomninjaatk/raromprocessor 
    container_name: raromprocessor
    volumes:
      - /path/to/config/files:/config:rw
      - /path/to/skyscraper_cache:/cache:rw
      - /path/to/rom_input_folder:/input:rw
      - /path/to/rom_backup_folder:/backup:rw
      - /path/to/rom_output_folder:/output:rw
    environment:
      - PUID=1000
      - PGID=1000
      - AutoStart=true
      - ScriptInterval=1h
      - DeDupe=false
      - AquireRomSets=false
      - ConcurrentDownloadThreads=5
      - EnableUnsupportedPlatforms=true
      - ScrapeMetadata=false
      - keepBackupsOfImportedRoms=true
      - ScreenscraperUsername=Username
      - ScreenscraperPassword=Password
      - skyscraperLanguagePreference=en
    restart: unless-stopped
```
 
# Credits
- [RetroAchievements](https://retroachievements.org) (Used for validation)
- [RAHasher](https://github.com/RetroAchievements/RALibretro/releases) (Used for Hashing)
- [hascheevos](https://github.com/meleu/hascheevos) (Used for inspiration)
- [skyscraper](https://github.com/muldjord/skyscraper) (Tool used for scraping ROM metadata)
- [screenscraper](https://screenscraper.fr/) (DB used for ROM metadata)
- [Rom icons created by phatplus - Flaticon](https://www.flaticon.com/free-icons/rom)
- [Internet Archive](https://archive.org)
