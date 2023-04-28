ARG VERSION
ARG CHANNEL

FROM lscr.io/linuxserver/homeassistant:${VERSION}

ENV HASS_GIT_USER_NAME     "false"
ENV HASS_GIT_USER_EMAIL    "false"
ENV HASS_CONFIG_GIT        "false"
ENV HASS_HACS_INSTALL ""

# install packages
RUN \
  echo "**** install build packages ****" && \
  apk add --no-cache --virtual=build-dependencies \
    git && \
  echo "**** cleanup ****" && \
  apk del --purge \
    build-dependencies && \
  for cleanfiles in *.pyc *.pyo; \
    do \
    find /usr/lib/python3.*  -iname "${cleanfiles}" -exec rm -f '{}' + \
    ; done && \
  rm -rf \
    /tmp/* \
    /root/.cache \
    /root/.cargo

COPY ./apps/home-assistant/entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]
LABEL org.opencontainers.image.source="https://github.com/linuxserver/docker-homeassistant"
