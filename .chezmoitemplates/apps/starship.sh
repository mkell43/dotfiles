if ! [[ -x "$(command -v starship)" ]]; then
  source backup.prompt
else
  eval "$(starship init bash)"
fi
