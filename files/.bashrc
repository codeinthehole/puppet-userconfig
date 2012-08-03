# =======================
# BASH CONFIGURATION FILE
# =======================
#
# Custom .bashrc file - thank/blame David Winterbottom for the behaviour specified here

# ========
# START-UP
# ========

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# =======
# HISTORY
# =======

# HISTFILESIZE - Number of lines of history saved in HISTFILE
#                This is the number of events remembered between
#                sessions
export HISTFILESIZE=100000

# HISTSIZE - Number of events remembered from session which
#            are written to HISTFILE when the session closes.
export HISTSIZE=10000

# ====
# MISC
# ====

# Allow small typos when changing directories
shopt -s cdspell

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# Prompt
if [ `id -u` = 0 ]; then 
	# Root prompt
	PS1="\[\e[31m\]\u@\h:\W \$ \[\e[m\]"
else 
	PS1="\[\e[34m\]\u@\h:\W \$ \[\e[m\]"
fi
export PS1

# Useful aliases
alias mkdir="mkdir -p"
alias ll='ls -lh'
