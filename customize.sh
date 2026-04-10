#!/system/bin/sh
# WiFi Force Country Code - Installation Script
# by burakgon

ui_print ""
ui_print "==========================================="
ui_print "   WiFi Force Country Code v2.0"
ui_print "   by burakgon"
ui_print "==========================================="
ui_print ""

# Create default config if not exists
if [ ! -f "$MODPATH/country.conf" ]; then
    echo 'COUNTRY_CODE=US' > "$MODPATH/country.conf"
    echo 'ENABLED=1' >> "$MODPATH/country.conf"
fi

# Set permissions
set_perm_recursive "$MODPATH" 0 0 0755 0644

ui_print "  [*] Module installed successfully"
ui_print "  [*] Configure via KernelSU WebUI"
ui_print ""
