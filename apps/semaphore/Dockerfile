ARG VERSION
ARG TARGETPLATFORM
ARG CHANNEL

FROM semaphoreui/semaphore:${VERSION:-v2.10.22}

USER root

RUN apk update && \
  apk add --no-cache --virtual \
	  sops

USER 1001
