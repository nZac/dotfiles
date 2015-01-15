#!/bin/sh

if [ ! -f /usr/local/etc/dnsmasq.conf ]; then
    echo "  Installing DNSMASQ Setup for development DNS"

    ln -s $ZSH/dnsmasq/dnsmasq.conf /usr/local/etc/dnsmasq.conf

    sudo mkdir -p /etc/resolver

    sudo ln -s $ZSH/dnsmasq/resolver.dev.conf /etc/resolver/dev

    # Copy the daemon configuration file into place.
    sudo cp $(brew list dnsmasq | grep /homebrew.mxcl.dnsmasq.plist$) /Library/LaunchDaemons/

    # Start Dnsmasq automatically.
    sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
fi
