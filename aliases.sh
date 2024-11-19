# List
if [ -x "$(command -v eza)" ]; then
    alias ls="eza --icons=always --group-directories-first"
    alias ll="eza -l --icons=always --no-user --group-directories-first  --time-style long-iso"
    alias la="eza -la --icons=always --no-user --group-directories-first  --time-style long-iso"
fi

# Man
if [ -x "$(command -v tldr)" ]; then
    alias man='tldr'
    alias mano='man'
fi

# Edit .zshrc file
alias zshrc="$EDITOR $zshrc"

# Lock Screen
alias lockscreen='pmset displaysleepnow'

# Reload settings or hardware
alias reload!="source $zshrc"
alias reload="echo 'Use \"reload!\" instead'"
alias reload-wifi='sudo iwlist wlp3s0 scan'
alias reload-audio='sudo killall coreaudiod'
alias reload-touchbar="sudo pkill TouchBarServer && sudo killall ControlStrip && sudo pkill NowPlayingTouchUI"

# Networking
alias sshproxy='echo "Starting proxy server on port 5555..."; ssh -qTnN -D 5555'
alias pubip='curl ipv4.icanhazip.com'
alias myip="ifconfig | grep inet | grep -vE '(inet6|127.0.0.1)' | awk '{print $2}' | awk -F ':' '{print $2}'"
alias mymac='ifconfig en0 | grep ether'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# Random
alias fsize='du -hs'
alias dsize='du -h -d 1'
alias grep='grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,node_modules,deps} -i --color'
