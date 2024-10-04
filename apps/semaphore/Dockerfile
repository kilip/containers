ARG VERSION
ARG TARGETPLATFORM
ARG CHANNEL

FROM ghcr.io/getsops/sops:v3.9.1-alpine AS base_sops

FROM semaphoreui/semaphore:${VERSION:-v2.10.22}

COPY --from=base_sops /usr/local/bin/sops /usr/local/bin/
