#!/usr/bin/env bash
version=$(curl -sX GET "https://api.github.com/repos/dunglas/frankenphp/releases/latest" | jq --raw-output '.tag_name' 2>/dev/null)
version="${version#*v}"
version="${version#*release-}"
#printf "%s" "${version}"
printf "%s" "1.1.1-php8.3"
