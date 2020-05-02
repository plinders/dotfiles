#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

SOURCE="$(realpath .)"
DESTINATION="$(realpath ~)"
ZSH_DIR="$(realpath ~/.zsh)"
FONTDIR="$(realpath ~/Library/Fonts)"

info "Setting up zsh"

# cd "Meslo"
# find * -name "*.ttf" | while read fn; do
#     symlink "$SOURCE/Meslo/$fn" "$FONTDIR/$fn"
# done
# clear_broken_symlinks "$FONTDIR"

cd "$DIR"

substep_info "Creating zsh folder..."
# mkdir -p $ZSH_DIR
# mkdir -p "$(realpath ${ZSH_DIR}/functions)"

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

symlink "${SOURCE}/.zshrc"  "${DESTINATION}/.zshrc"

find * -maxdepth 0 -not -name "$(basename ${0})" -not -name ".zshrc" -type f | while read fn; do
    # symlink "$SOURCE/$fn" "$DESTINATION/$fn"
    echo "${fn}"
done
# clear_broken_symlinks "$DESTINATION"

success "Finished setting up zsh"
