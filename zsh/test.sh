#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"
FONTDIR="$(realpath ~/Library/Fonts)"

info "Setting up zsh"

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cp .zshrc ~/.zshrc

# substep_info "Creating Visual Studio Code folders..."
# mkdir -p "$DESTINATION"



# cd "Meslo"
# find * -name "*.ttf" | while read fn; do
#     symlink "$SOURCE/Meslo/$fn" "$FONTDIR/$fn"
# done
# cd "$DIR"

find * -maxdepth 0 -not -name "$(basename ${0})" -not -name ".zshrc" -type f | while read fn; do
    echo "${fn}"
done

success "Finished setting up zsh"
