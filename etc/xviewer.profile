# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/xviewer.local

# xviewer profile
noblacklist ~/.config/xviewer
noblacklist ~/.Steam
noblacklist ~/.steam
noblacklist ~/.local/share/Trash

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
nogroups
nonewprivs
noroot
nosound
protocol unix
seccomp
shell none
tracelog

private-dev
private-bin xviewer
private-tmp

noexec ${HOME}
noexec /tmp
