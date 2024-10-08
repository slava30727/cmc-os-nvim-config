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

alias ls="eza"
alias la="eza -a"
alias lal="eza -al"
alias tree="eza -aT"

DEFAULT_CC_FLAGS="-Wall -Wextra -std=gnu23 -lm"

alias gccfg="gcc ${DEFAULT_CC_FLAGS} -g"
alias gccfo="gcc ${DEFAULT_CC_FLAGS} -O2"

alias bat="bat --theme TwoDark"

alias vim="nvim"
alias vi="nvim"
. "$HOME/.cargo/env"

PATH="$PATH:$HOME/.cargo/"

eval "$(zoxide init bash --cmd cd)"
