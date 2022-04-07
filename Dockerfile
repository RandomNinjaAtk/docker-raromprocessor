FROM lsiobase/ubuntu:focal
LABEL maintainer="RandomNinjaAtk"

ENV TITLE="hascheevos"
ENV VERSION="0.0.001"
ENV APP_PATH /usr/local/hascheevos
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
		python3-pip && \
	echo "************ setup hascheevos ************" && \
	echo "************ setup directory ************" && \
	mkdir -p ${APP_PATH} && \
	echo "************ download repo ************" && \
	git clone --depth 1 https://github.com/meleu/hascheevos ${APP_PATH} && \
	cd ${APP_PATH} && \
	make && \
	chmod -R 777 ${APP_PATH} 
		
# copy local files
COPY root/ /
 
# set work directory
WORKDIR /config
