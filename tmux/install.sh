#
# Install tmux config
#
printf "[tmux] start install\n"

TMUX_CONFIG_DIR="${HOME}"
mkdir -p "${TMUX_CONFIG_DIR}"
ln -s "${PWD}/tmux.conf" "${TMUX_CONFIG_DIR}/.tmux.conf"

printf "[tmux] done installing\n"
