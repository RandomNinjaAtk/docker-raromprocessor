# docker-hascheevos
More details soon.... work in progress...

### docker

```
docker create \
  --name=hascheevos \
  -v /path/to/config/files:/config \
  -v /path/to/rom_import_folder:/import \
  -v /path/to/rom_output_folder:/output \
  -e PUID=1000 \
  -e PGID=1000 \
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
    restart: unless-stopped
```
