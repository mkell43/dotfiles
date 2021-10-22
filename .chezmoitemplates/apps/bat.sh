# shellcheck shell=bash

if [[ -x "(command -v bat)" ]]; then

  export BAT_THEME="DarkNeon"

  batdiff() {
    git diff --name-only --diff-filter=d | xargs "$(which bat)" --diff
  }

  alias bat='bat'
  alias cat='bat --paging=never -pp'

fi
