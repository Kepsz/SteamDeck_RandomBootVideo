#This is a fork of MKirafi's awsome random boot vid script for SteamDeck
#Original link: https://gist.github.com/MKirafi/710fc2b6c90d55a68a775d24925aad08
#
#Modification: changed to create / delete symbolic link instead of using mv to replace media
#V1.0
#
#Usage:
#Put your downloaded (https://steamdeckrepo.com) videos into this folder: /.steam/root/config/uioverrides/movies
#
#Put this file into your home folder on the SteamDeck.
#Give running priviledge to the file by execute this: chmod +x randbootvid.sh
#Run the script by this command: ./randbootvid
#note, rm command may warn you about the missing deck_startup.webm file, just ignore it.

echo '
[Unit]
Description=Switches startup videos
[Service]
ExecStart=/bin/bash /home/deck/.update_boot_vid.sh
[Install]
WantedBy=default.target
' > ~/.config/systemd/user/switch_startup_vids.service

systemctl --user enable ~/.config/systemd/user/switch_startup_vids.service

echo '
#!/bin/bash
VID_PATH=~/.steam/root/config/uioverrides/movies
rm "$VID_PATH"/deck_startup.webm
RANDOM_VID=$(ls "$VID_PATH" | sort -R | head -1)
ln -s "$VID_PATH"/"$RANDOM_VID" "$VID_PATH"/deck_startup.webm
' > ~/.update_boot_vid.sh

chmod +x ~/.update_boot_vid.sh
~/.update_boot_vid.sh
