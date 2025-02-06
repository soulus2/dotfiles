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

# Black 	30 	40
# Red 	31 	41
# Green 	32 	42
# Yellow 	33 	43
# Blue 	34 	44
# Magenta 	35 	45
# Cyan 	36 	46
# Light Gray 	37 	47
# Gray 	90 	100
# Light Red 	91 	101
# Light Green 	92 	102
# Light Yellow 	93 	103
# Light Blue 	94 	104
# Light Magenta 	95 	105
# Light Cyan 	96 	106
# White 	97 	107
#
# 0 	Reset/Normal
# 1 	Bold text
# 2 	Faint text
# 3 	Italics
# 4 	Underlined text

force_color_prompt=yes
PS1="\[\e[1;91m\]<\h>\n\[\e[93m\]\u\[\e[1;30;103m\] \[\e[3m\]\W\[\e[0;93m\]\[\e[0m\] "


alias l='ls -a'
alias c='clear'
alias ..='cd ..'
alias gcs='cd ~/Github/CS-1/'
alias gweb='cd ~/Github/WEB-1/'

alias copy='xclip -selection clipboard'

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
