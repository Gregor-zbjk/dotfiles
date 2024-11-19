#!/bin/zsh

function header_info_zsh {
  clear
  cat <<"EOF"

#########################################################
#                  Mac OS zsh Setup Script              #
#                                                       #
# by Gregor Zobjak (known as Gregor_zbjk / Gregor.zbjk) #
# Github:  Gregor-zbjk                                  #
#########################################################
EOF
}

header_info_zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sources:
# https://www.cesarsotovalero.net/blog/my-ultimate-terminal-customizations-for-macos.html