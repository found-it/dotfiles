#
# Install nvim config
#
NVIM_CONFIG_DIR="${HOME}/.config/nvim"
mkdir -p "${NVIM_CONFIG_DIR}"

ln -s "${PWD}/init.lua" "${NVIM_CONFIG_DIR}/init.lua"

SRC_LUA_DIR="${PWD}/lua/"
DST_LUA_DIR="${NVIM_CONFIG_DIR}/lua"

ln -s "${SRC_LUA_DIR}" "${DST_LUA_DIR}"
