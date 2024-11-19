#!/bin/zsh

# Copyright (c) 2021-2024 Gregor Zobjak
# Author: Gregor-zbjk (Gregor Zobjak)
# License: ---
# https://.../

# ADD FORMATTERS

# functions

function exit-script() {
  clear
  echo -e "⚠  User exited script \n"
  exit
}

function header_info {
  clear
  cat <<"EOF"

#########################################################
#              Mac OS Application Installer             #
#                                                       #
# by Gregor Zobjak (known as Gregor_zbjk / Gregor.zbjk) #
# Github:  Gregor-zbjk                                  #
#########################################################
EOF
}

header_info

# install Homebrew (Erforderlich)
echo "This Script needs >>Homebrew<< for macOS installed"
echo
echo -n "Do you want to install >>Homebrew<< (y/n)? " # Question
read answer #read input

if [ "$answer" != "${answer#[Yy]}" ] ;then # if yes
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" # install Script for Homebrew
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.zshrc

else # if no
    
fi
Clear


# install mas - App Store CLI (Erforderlich)
echo "
#########################################################
#              Mac OS Application Installer             #
#                                                       #
# by Gregor Zobjak (known as Gregor_zbjk / Gregor.zbjk) #
# Github:  Gregor-zbjk                                  #
#########################################################
"

echo "This Script needs to install >>mas<< (CLI for AppStore) via Homebrew"
echo
echo -n "Do you want to install >>mas<< (y/n)? " # Question
read answer #read input

if [ "$answer" != "${answer#[Yy]}" ] ;then # if yes
brew install mas # AppStore CLI tool

else # if no
    
fi
Clear

# tools install
echo "
#########################################################
#              Mac OS Application Installer             #
#                                                       #
# by Gregor Zobjak (known as Gregor_zbjk / Gregor.zbjk) #
# Github:  Gregor-zbjk                                  #
#########################################################
"

echo "This Script will install some helpful tools"
echo
echo -n "Do you want to install these tools (y/n)? " # Question
read answer #read input

echo "[info] updating repos an packages"
brew update
brew upgrade

# Homebrew
## Homebrew Apps (bottles)
if [ "$answer" != "${answer#[Yy]}" ] ;then # if yes
    brew install git ffmpeg youtube-dl midnight-commander tree Archy neofetch trash htop OCRmyPDF tesseract tesseract-lang imagemagick git gh rename nmap qemu tldr bat eza
    # git = 
    # ffmpeg = great open-source decoder & converter for audio, just a good CLI audio tool
    # youtube-dl = youtube-downloader
    # midnight-commander = Finder for CLI, the classical midnight-commander form linux!
    # tree = tool that displays file structures tree-like
    # Archy = System informationtool with ASCI-logo and general System-info alternative: neofetch, screenfetch
    # neofetch = System informationtool with ASCI-logo and general System-info; portet from Linux
    # trash = Tool that moves file to the trash via CLI (command: "rm -f" whould do the same)
    # htop = activity manager
    # OCRmyPDF = awesome PDF-OCR tool!
    # tesseract = OCR-Tool, needed from OCRmyPDF to work
    # tesseract-lang = Language Pack with all languages
    # imagemagick = nice CLI Image & PDF edit tool
    # git = git client (version control)
    # gh = Github CLI
    # rename = batch rename
    # nmap = Network scanning tool
    # qemu = Hypervisor
    # tldr = Simplified and community-driven man pages
    # bat = better cat
    # eza = better ls, modern replacment for "ls" replacement for debricaded exa
    # add to ~/.zshrc
      # alias ls='exa --icons --group-directories-first'
      # alias ll='exa -l --icons --no-user --group-directories-first  --time-style long-iso'
      # alias la='exa -la --icons --no-user --group-directories-first  --time-style long-iso'

## Hombrew Apps (Cask)
    brew install --cask visual-studio-code angry-ip-scanner cyberduck wireshark cheatsheet SF-symbols appcleaner coconutbattery blender ghidra remote-desktop-manager temurin zenmap amazon-q vmware-fusion 
    # visual-studio-code = Code Editor
    # angry-ip-scanner = Network IP Scanner
    # cyberduck = FTP & Remote Connection File manager
    # wireshark = Network Analysis
    # cheatsheet = Cheatsheet for macOS Keyboard Shortcuts
    # SF-symbols = Apple Symbols
    # appcleaner = app cleaner for macOS Apps
    # coconutbattery = Battery info utility
    # blender = 3D animation Software
    # ghidra = Reverse engineering tools by CIA
    # remote-desktop-manager = Remote connection manager
    # temurin = Jave JRE/JDK
    # zenmap = GUI for nmap
    # amazon-q = 
    # vmware-fusion =

    ### Fonts (Cask)
      #### Apple Fonts
      brew install --cask font-sf-pro font-sf-compact font-sf-mono font-new-york font-hack-nerd-font

      brew autoremove
      brew cleanup
  echo "===== INSTALL OF HOMEBREW APPS FINISHED ====="
  
## AppStore Apps

  echo "NEXT STEP:"
  echo "========= INSTALLING APPSTORE APPS =========="
    ### Apple Apps
    mas install 409201541 # Pages
    mas install 409203825 # Number
    mas install 409183694 # Keynote
    mas install 408981434 # iMovie
    mas install 682658836 # GarageBand
    mas install 497799835 # Xcode
    mas install 1388020431 # DevCleaner for Xcode
    mas install 1504940162 # RocketSim for Xcode Simulator
    mas install 1561328879 # Assets Maker for Xcode
    mas install 1183412116 # Swiftify for Xcode
    mas install 1551475309 # Templates for Swift
    mas install 1496833156 # Swift Playgrounds
    mas install 640199958 # Apple Developer
    mas install 899247664 # TestFlight
    mas install 1037126344 # Apple Configurator
    mas install 897118787 # Shazam: Musikerkennung
    ### Normal Apps
    mas install 948660805 # AusweisApp Bund
    mas install 1474276998 # HP Smart for Desktop
    mas install 310633997 # WhatsApp
    mas install 747648890 # Telegram
    mas install 1480068668 # Facebook Messanger
    #### Dienstprogramme
    mas install 1153157709 # Speedtest by Ookla
    mas install 937984704 # Ampetamine
    mas install 1099568401 # Home Assistant
    mas install 1381004916 # Discovery - DNS-SD Browser (Bonjour-Scanner/mDNS Browser)
    mas install 483820530 # QR Journal
    mas install 1099120373 # Exporter (for Notes.app)
    mas install 1524540481 # Widgy Widgets: Home/Lock/Watch
    mas install 1536358464 # MD Clock - Uhr Widget
    mas install 1440405750 # MusicHarbor - Neue Musik
    mas install 1564688210 # Glance - Quick Look Code Files
    mas install 1351639930 # Gifski (Gif Maker)
    #### Grafik & Design
    mas install 1219074514 # Linearity Curve: Grafik Design
    mas install 2146257581 # Linearity Move: Animate Design
    #### Entwickler Werkzeuge
    mas install 1342896380 # Hex Fiend (Hex Viewer & Editor)
    mas install 1518425043 # Boop
    mas install 1287239339 # ColorSlurp
    mas install 1483172210 # Free Ruler
    mas install 1516894961 # Codye
    nas install 1469400117 # Red Lines Tools
    mas install 1465481124 # Snippit - Code Snippet Manager
    mas install 1536132004 # JsonHelper
    mas install 414568915 # Key Codes
    mas install 1468691718 # Jayson
    #### Nachlagwerk
    mas install 430255202 # Mactracker
    mas install 1180438899 # gesetze.io
    ### Safari Addons 
    mas install 1591303229 # Vinegar - Tube Cleaner
    mas install 1601151613 # Baking Soda - Tube Cleaner
    mas install 1438243180 # Dark Reader for Safari
    mas install 1462114288 # Grammarly: AI Writing Support
    mas install 1463298887 # Userscripts
    mas install 1458969831 # JSON Peep for Safari
    mas install 1520333300 # Wappalyzer
    mas install 2116285550 # Save to Pinterest
    mas install 1549370672 # save to Raindrop.io
    mas install 1533805339 # Keepa - Price Tracker
    mas install 1160374471 # PiPifier
    mas install 1472432422 # Wayback Machine
    # ...
    
else # if no
    exit
fi

# END
echo "YOUR MAC IS READY TO GO!"