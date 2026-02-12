# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

eval "$(starship init bash)"

# Add to the bottom of ~/.bashrc
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$HOME/.local/bin
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock

alias checkstack='echo "--- STATUS ---"; docker ps; echo "--- K8S ---"; kubectl get nodes; echo "--- TOOLS ---"; terraform -version; ansible --version'
. "$HOME/.cargo/env"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# DevOps Python Venv Automator
venv-up() {
  if [ ! -d ".venv" ]; then
    echo "🚀 Creating new virtual environment with uv..."
    uv venv .venv
  fi
  source .venv/bin/activate
  echo "💜 Venv Active [$(python --version)]"
}

# Alias to clean up environments
alias venv-clean='rm -rf .venv && echo "🗑️ Venv removed."'
