#
# Execute all install scripts
#

execute_install() {
  directory="${1}"
  cd "${directory}"
  bash install.sh
  cd ..
}

main() {
  for dir in ./*; do
    if [ -d ${dir} ]; then
      printf "[$(basename ${dir})] Install\n"
      execute_install "${dir}"
      printf "[$(basename ${dir})] Done\n"
    fi
  done
}

main
