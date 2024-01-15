#
# Install fish config
#
printf "[fish] start install\n"

FISH_CONFIG_DIR="${HOME}/.config/fish"
mkdir -p "${FISH_CONFIG_DIR}"

ln -s "${PWD}/config.fish" "${FISH_CONFIG_DIR}/config.fish"

printf "[fish] done installing\n"
