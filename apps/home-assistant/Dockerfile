ARG VERSION
ARG TARGETPLATFORM
ARG CHANNEL

FROM ghcr.io/onedr0p/home-assistant:${VERSION}

ENV HASS_USING_GIT_CONFIG=0

COPY ./apps/home-assistant/entrypoint.sh /entrypoint

WORKDIR /app
USER kah
COPY ./apps/home-assistant/entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]

LABEL org.opencontainers.image.source="https://github.com/home-assistant/core"
