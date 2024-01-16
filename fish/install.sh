#
# Install fish config
#
FISH_CONFIG_DIR="${HOME}/.config/fish"
mkdir -p "${FISH_CONFIG_DIR}"

ln -s "${PWD}/config.fish" "${FISH_CONFIG_DIR}/config.fish"

SRC_FUNCTIONS_DIR="${PWD}/functions"
DST_FUNCTIONS_DIR="${FISH_CONFIG_DIR}/functions"
mkdir -p "${DST_FUNCTIONS_DIR}"

for filepath in ${SRC_FUNCTIONS_DIR}/*; do
  filename=$(basename "${filepath}")
  ln -s "${SRC_FUNCTIONS_DIR}/${filename}" "${DST_FUNCTIONS_DIR}/${filename}"
done
