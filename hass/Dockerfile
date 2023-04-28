FROM lscr.io/linuxserver/home-assistant:2023.4.6

ENV HASS_CONFIG_GIT ""

# install packages
RUN \
  echo "**** install build packages ****" && \
  apk add --no-cache --virtual=build-dependencies \
    git
