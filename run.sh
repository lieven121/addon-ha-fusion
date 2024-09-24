#!/usr/bin/with-contenv bashio

# export HASS_PORT=$(bashio::core.port)
export HASS_PORT=$(bashio::addon.option.hass_port bashio::core.port)
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")
export HASS_URL=$(bashio::addon.option.hass_url)

echo "Starting Fusion..."

node server.js
