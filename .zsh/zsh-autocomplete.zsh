bindkey             '^I'  menu-select
bindkey "$terminfo[kcbt]" menu-select
bindkey -M menuselect              '^I' menu-complete
bindkey -M menuselect "$terminfo[kcbt]" reverse-menu-complete
# By default, Autocomplete adds a semicolon to each history line to allow adding another line with CtrlSpace. You can deactivate this feature as follows:
zstyle ':autocomplete:*' append-semicolon no
