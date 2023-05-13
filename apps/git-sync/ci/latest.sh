#!/usr/bin/env bash
version=$(curl -sX GET "https://api.github.com/repos/linuxserver/docker-homeassistant/releases/latest" | jq --raw-output '.tag_name' 2>/dev/null)
version="${version#*v}"
version="${version#*release-}"
version="${version//-*/}"
printf "%s" "${version}"
