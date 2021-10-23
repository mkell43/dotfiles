source <(kubectl completion bash)
alias k=kubectl
complete -F __start_kubectl k

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

function kbash() {
  kubectl exec --stdin --tty "$1" -- /bin/bash
}
