FROM lsiobase/ubuntu:focal
LABEL maintainer="RandomNinjaAtk"

ENV TITLE="hascheevos"
ENV VERSION="0.0.002"
ENV APP_PATH /usr/local/hascheevos
ENV SKYSCRAPER_PATH /usr/local/skysource
ENV ScriptInterval=1h
ENV DeDupe=false

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
		sudo \
		wine \
		python3-pip && \
	echo "************ finish wine installation ************" && \
	dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y wine32 && \
	wine && \
	echo "************ install python packages ************" && \
	python3 -m pip install --no-cache-dir -U \
		yq && \
	echo "************ setup hascheevos ************" && \
	echo "************ setup directory ************" && \
	mkdir -p ${APP_PATH} && \
	echo "************ download repo ************" && \
	git clone --depth 1 https://github.com/meleu/hascheevos ${APP_PATH} && \
	cd ${APP_PATH} && \
	make && \
	chmod -R 777 ${APP_PATH} && \
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
	bash update_skyscraper.sh
		
# copy local files
COPY root/ /
 
# set work directory
WORKDIR /config
