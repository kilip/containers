#!/usr/bin/env bash

#shellcheck disable=SC1091
test -f "/scripts/umask.sh" && source "/scripts/umask.sh"

if [[ "${HASS_GIT_USER_NAME}" != "false" ]]; then
    git config --global user.name ${HASS_GIT_USER_NAME}
fi

if [[ "${HASS_GIT_USER_EMAIL}" != "false" ]]; then
    git config --global user.email ${HASS_GIT_USER_EMAIL}
fi

if [[ "${HASS_CONFIG_GIT}" != "false" ]]; then
    git clone ${HASS_CONFIG_GIT} /config
fi

if [[ "${HASS_HACS_INSTALL}" == "true" ]]; then
    wget -O - https://get.hacs.xyz | bash -
fi

exec \
    /usr/bin/hass \
        --config /config \
        "$@"
