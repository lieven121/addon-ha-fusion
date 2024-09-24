#!/usr/bin/with-contenv bashio

# export HASS_PORT=$(bashio::core.port)
export HASS_PORT=$(bashio::addon.option "hass_port" )
export HASS_URL=$(bashio::addon.option "hass_url")
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

echo "Starting Fusion..."

node server.js
