#!/system/bin/sh
# WiFi Force Country Code - by burakgon
# Reads config and applies WiFi country code at boot

MODDIR=${0%/*}
CONFIG="$MODDIR/country.conf"

{
    until [ "$(getprop sys.boot_completed)" = "1" ]; do
        sleep 5
    done
    sleep 3

    # Read config
    if [ -f "$CONFIG" ]; then
        . "$CONFIG"
    else
        COUNTRY_CODE="US"
        ENABLED=1
    fi

    # Apply country code if enabled
    if [ "$ENABLED" = "1" ]; then
        cmd wifi force-country-code enabled "$COUNTRY_CODE"
    fi
}&
