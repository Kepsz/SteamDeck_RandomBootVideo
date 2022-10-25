# SteamDeck_RandomBootVideo

V1.0

This is a fork of MKirafi's awsome random boot vid script for SteamDeck\
Original link: https://gist.github.com/MKirafi/710fc2b6c90d55a68a775d24925aad08
Modification: changed to create / delete symbolic link instead of using mv to replace media

Usage:\
Put your downloaded (https://steamdeckrepo.com) videos into this folder: /.steam/root/config/uioverrides/movies\
Put this file into your home folder on the SteamDeck.\
Give running priviledge to the file by execute this: chmod +x randbootvid.sh\
Run the script by this command: ./randbootvid.sh\
note, rm command may warn you about the missing deck_startup.webm file, just ignore it.


Magyarul:

Ez egy forkja MKirafi fasza boot videó váltó scriptjének.\
Eredeti link: https://gist.github.com/MKirafi/710fc2b6c90d55a68a775d24925aad08
Módosítás: átírtam, hogy szimbólikus linkeket csináljon fájlok mozgatása helyett

Használat:\
Tedd a letöltött (https://steamdeckrepo.com) videóidat ide: /.steam/root/config/uioverrides/movies\
Másold ezt a fájlt a home könyvtáradba a deck-en.\
Adj futási jogot a fájlnak: chmod +x randbootvid.sh\
Futtasd a fájlt: ./randbootvid.sh\
megjegyzés, az rm panaszkodhat a hiányzó deck_startup.webm file miatt, ignoráld.
