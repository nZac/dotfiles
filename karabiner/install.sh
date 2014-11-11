#!/bin/sh
#
# Karabiner
#
# Default key remaping with Karabiner

karabiner_cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

if [[ ! -a $karabiner_cli ]]; then
    echo "Karabiner is not installed properly"
    return 0
fi

echo "\n"
echo "Configuring Karabiner."

$karabiner_cli set repeat.wait 15
$karabiner_cli set repeat.initial_wait 115

echo "Done configuring Karabiner."
