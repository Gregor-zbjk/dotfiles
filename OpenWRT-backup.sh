# Documentation
# =======================
# This file contains files and directories that should
# be preserved during an upgrade

# Generate backup:
#  /usr/sbin/sysopkg write
#  umask go=
#  sysupgrade -b /tmp/backup-${HOSTNAME}-$(date +%F).tar.gz

# Restore backup:
#  sysupgrade -r /tmp/backup-*.tar.gz
#  /usr/sbin/sysopkg install

# Base OpenWRT
# =======================

# Preserve this file configuration file
/etc/sysupgrade.conf

# Backup root directory
/root

# Backup SSH keys for autossh
/etc/ssh/

# Preserve shell files
/etc/profile.d/

# GL.inet (Default)
# =======================
/etc/config/gl_nas/

# Other files
# =======================

# Support for sysopkg
/usr/sbin/sysopkg
/etc/opkg/packages.list

# Support for autossh
# See: https://openwrt.org/docs/guide-user/services/ssh/autossh#run_as_service
/etc/init.d/autossh