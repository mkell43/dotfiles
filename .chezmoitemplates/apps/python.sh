export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init --path)"

# export PATH="$HOME/.poetry/bin:$PATH"
# # shellcheck source=/home/mike/.poetry/env
# source "$HOME/.poetry/env"
eval "$(poetry completions bash)"

export PATH="$PATH:/home/mike/.local/bin"
eval "$(register-python-argcomplete3 pipx)"

proj() {
  # Assumes that you're using `pyenv`.
  cookiecutter_path="$PYENV_ROOT/versions/$(pyenv global)/bin/cookiecutter"
  cookiecutter_template="gh:mkell43/template-python"
  if [[ -x "$cookiecutter_path" ]]; then
    $cookiecutter_path $cookiecutter_template -f
  fi
}
