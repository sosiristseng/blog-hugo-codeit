# ~/.profile

[[ -d "${HOME}/.local/bin" ]] && PATH="${HOME}/.local/bin:${PATH}"

export BROWSER=$(command -v xdg-open)
export EDITOR=$(command -v nano)
export JULIA_NUM_THREADS=$(nproc)
export ELECTRON_TRASH=trash-cli
