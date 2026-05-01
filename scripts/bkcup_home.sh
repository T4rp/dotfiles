#!/bin/bash

# Below is an example config:

# CONFIGURED=0
# REMOTE="example@192.168.1.100"
# BACKUP_PATH="/home/example/Backups/ArchDesktop"
#
# TO_BACKUP=(
# 	~/backup_home.sh
# 	~/.pkglist.txt
# 	~/.pkglist_aur.txt
# 	~/Projects/
# 	~/Pictures/
# 	~/Videos/
# 	~/Documents/
# 	~/Notes/
# 	~/.config/
# )

if [ "$CONFIGURED" -ne 1 ]; then
	echo "script wasnt configured"
	exit 1
fi

echo "Generated pacman package lists (~/.pkglist.txt and ~/.pkglist_aur.txt)"
pacman -Qqen > ~/.pkglist.txt
pacman -Qqem > ~/.pkglist_aur.txt

for p in ${TO_BACKUP[@]}; do
	echo "Syncing $p..."
	relative_path="${p#$HOME}"
	rsync --recursive --info=progress2 $p "$REMOTE:$BACKUP_PATH/$relative_path"
done

