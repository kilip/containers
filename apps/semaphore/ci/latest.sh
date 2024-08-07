#!/usr/bin/env bash
version=$(curl -sX GET "https://api.github.com/repos/semaphoreui/semaphore/releases/latest" | jq --raw-output '.tag_name' 2>/dev/null)
printf "%s" "${version}"
