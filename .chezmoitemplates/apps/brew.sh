# shellcheck shell=bash

if [[ -x "(command -v brew)" ]]; then

  eval "$("$HOME"/.linuxbrew/bin/brew shellenv)"

  if type brew &>/dev/null; then
    HOMEBREW_PREFIX="$(brew --prefix)"
    if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]; then
      # shellcheck disable=SC1091
      source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
    else
      for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*; do
        # shellcheck disable=SC1090
        [[ -r "$COMPLETION" ]] && source "$COMPLETION"
      done
    fi
  fi

  # export PATH="$HOMEBREW_PREFIX/bin:$PATH"

fi
