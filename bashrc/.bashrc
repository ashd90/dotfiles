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

alias checkstack='echo "--- STATUS ---"; docker ps; echo "--- K8S ---"; kubectl get nodes; echo "--- TOOLS ---"; terraform -version; ansible --version'
. "$HOME/.cargo/env"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export LANG=en_US.UTF-8

# Python Venv Automator
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
alias update='sudo pacman -Syu --noconfirm && yay -Syu --noconfirm'
alias install='sudo pacman -S --noconfirm'
alias yayins='yay -S --noconfirm'
alias n='nvim'
alias lastexit='last -x | head -n 5'
alias failinfo='journalctl -b -1 -n 1000 | grep -iE "shutdown|reboot|power|systemd-shutdown"'
# Quick SSD health summary
alias ssdhealth='sudo smartctl -A /dev/nvme0n1 | grep -E "Percentage Used|Data Integrity Errors|Critical Warning|Unsafe Shutdowns"'

#Sytem Services
alias enable='sudo systemctl enable --now'
alias disable='sudo systemctl disable'
alias start='sudo systemctl start'
alias stop='sudo systemctl stop'
alias status='sudo systemctl status'
alias reload='sudo systemctl restart'

#Docker

alias drm='docker rm'
alias drmi='docker rmi'
alias dcr='docker container run'
alias dr='docker run'
alias dsp='docker system prune'
alias db='docker build'
alias ds='docker container start'
alias dst='docker container stop'
alias dn='docker network'

# Emergency Sync and Reboot Function
safeoff() {
  echo "--- Initiating Safe Reboot Protocol ---"

  # 1. Standard Sync
  echo "Step 1: Flushing filesystem buffers..."
  sync

  # 2. Kernel Emergency Sync
  echo "Step 2: Sending SysRq Sync to Kernel..."
  sudo sh -c 'echo 1 > /proc/sys/kernel/sysrq'
  sudo sh -c 'echo s > /proc/sysrq-trigger'
  sleep 2

  # 3. Remount Read-Only (Crucial for BTRFS safety)
  echo "Step 3: Remounting all partitions as Read-Only..."
  sudo sh -c 'echo u > /proc/sysrq-trigger'
  sleep 1

  # 4. Immediate Force Reboot
  echo "Step 4: Forcing hardware reset..."
  sudo reboot -f
}
