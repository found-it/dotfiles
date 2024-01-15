
execute_install() {
  directory="${1}"
  cd "${directory}"
  bash install.sh
  cd ..
}

main() {
    execute_install "tmux"
    execute_install "fish"
}

main
