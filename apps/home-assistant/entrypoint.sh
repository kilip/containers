#!/usr/bin/env bash

#shellcheck disable=SC1091
test -f "/scripts/umask.sh" && source "/scripts/umask.sh"

if [[ "${HOME_ASSISTANT__HACS_INSTALL}" == "true" ]]; then
    wget -O - https://get.hacs.xyz | bash -
fi

if [[ "${HASS_USING_GIT_CONFIG}" == "true" ]]; then
    while [ ! -e /config/configuration.yaml ];
    do
        echo "Waiting for home-assistant config arrived at /config/configuration.yaml"
        sleep 1
    done
fi

exec \
    /usr/bin/hass \
        --config /config \
        "$@"
