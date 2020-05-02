# # # # # # # # # # # # # # # # # #
### THIS DOESN'T WORK CURRENTLY ###
# # # # # # # # # # # # # # # # # #

#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~/Library/Application\ Support/BetterTouchTool)"

info "Setting up BetterTouchTool..."

find * -maxdepth 0 -name "*.bttpreset" | while read fn; do
    filename="${fn%.*}"
    cp "$SOURCE/$fn" "$DESTINATION/$fn"
    defaults write com.hegenberg.BetterTouchTool.plist presets -array \
        "'<dict><key>presetName</key>'" \
            "'<string>${filename}</string>'" \
        "'<key>fileName</key>'" \
            "'<string>${fn}</string>'" \
        "'</dict>'"

    defaults write com.hegenberg.BetterTouchTool.plist currentStore "${filename}"

done
clear_broken_symlinks "$DESTINATION"

success "Finished setting up BetterTouchTool."