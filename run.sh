#!/usr/bin/with-contenv bashio

# export HASS_PORT=$(bashio::core.port)
export HASS_PORT=$(bashio::addon.option "hass_port" )
export HASS_URL=$(bashio::addon.option "hass_url")
export EXPOSED_PORT=$(bashio::addon.port "8099/tcp")

echo "HASS_PORT: $HASS_PORT"
echo "HASS_URL: $HASS_URL"
echo "EXPOSED_PORT: $EXPOSED_PORT"
echo "Starting Fusion..."

node server.js
