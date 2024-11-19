#! bin/ash

# Copyright (c) 2021-2024 Gregor Zobjak
# Author: Gregor-zbjk (Gregor Zobjak)
# License: none
# https://.../

function header_info {
  clear
  cat <<"EOF"

  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 OPKG install Script by Gregor Zobjak (gregpr.zbjk)
 -----------------------------------------------------
EOF
}

function exit-script() {
  clear
  echo -e "⚠  User exited script \n"
  exit
}

header_info
# add COUNTER & KEY to continue

opkg install luci-base-de luci-app-ttyd tc-full luci-app-sqm
opkg remove ch-zn --autoremove