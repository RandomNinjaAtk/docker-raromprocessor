FROM lsiobase/ubuntu:focal
LABEL maintainer="RandomNinjaAtk"

ENV TITLE="raromprocessor"
ENV VERSION="0.0.010"
ENV SKYSCRAPER_PATH /usr/local/skysource
ENV RAHASHER_PATH /usr/local/RALibretro
ENV ScriptInterval=1h
ENV DeDupe=false
ENV AquireRomSets=false
ENV ConcurrentDownloadThreads=1
ENV ScrapeMetadata=false
ENV EnableUnsupportedPlatforms=true
ENV skyscraperLanguagePreference=en
ENV keepBackupsOfImportedRoms=true

RUN \
	echo "************ install dependencies ************" && \
	echo "************ install and upgrade packages ************" && \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y \
		jq \
		unzip \
		gzip \
		git \
		p7zip-full \
		curl \
		make \
		gcc \
		unrar \
		axel \
		mame-tools \
		mingw-w64 \
		python3-pip && \
	echo "************ install python packages ************" && \
	python3 -m pip install --no-cache-dir -U \
		yq \
		internetarchive && \
	echo "************ skyscraper ************" && \
	echo "************ install dependencies ************" && \
	echo "************ install packages ************" && \
	apt-get update && \
	apt-get install -y \
		build-essential \
		wget \
		qt5-default && \
	apt-get purge --auto-remove -y && \
	apt-get clean && \
	echo "************ install skyscraper ************" && \
	mkdir -p ${SKYSCRAPER_PATH} && \
	cd ${SKYSCRAPER_PATH} && \
	wget https://raw.githubusercontent.com/muldjord/skyscraper/master/update_skyscraper.sh && \
	sed -i 's/sudo //g' update_skyscraper.sh && \
	bash update_skyscraper.sh && \
	echo "************ RAHasher installation ************" && \
	mkdir -p ${RAHASHER_PATH} && \
	wget "https://github.com/RetroAchievements/RALibretro/releases/download/1.3.11/RAHasher-x64-Linux-1.3.11.zip" -O "${RAHASHER_PATH}/rahasher.zip" && \
	unzip  "${RAHASHER_PATH}/rahasher.zip" -d ${RAHASHER_PATH} && \
	chmod -R 777 ${RAHASHER_PATH}
		
# copy local files
COPY root/ /
 
# set work directory
WORKDIR /config
