#
# Install tmux config
#
TMUX_CONFIG_DIR="${HOME}"
mkdir -p "${TMUX_CONFIG_DIR}"
ln -s "${PWD}/tmux.conf" "${TMUX_CONFIG_DIR}/.tmux.conf"
