#!/usr/bin/env bash
frankenphp=$(curl -sX GET "https://api.github.com/repos/dunglas/frankenphp/releases/latest" | jq --raw-output '.tag_name' 2>/dev/null)
frankenphp="${frankenphp#*v}"
frankenphp="${frankenphp#*release-}"

printf "%s" "${frankenphp}-php8.3"
