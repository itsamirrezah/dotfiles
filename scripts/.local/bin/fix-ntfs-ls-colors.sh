dircolors --print-database > $HOME/.dircolors
sed -i 's/'STICKY_OTHER_WRITABLE'/'STICKY_OTHER_WRITABLE\ 01\;34\ \#'/g' ~/.dircolors
sed -i 's/'OTHER_WRITABLE'/'OTHER_WRITABLE\ 01\;34\ \#'/g' ~/.dircolors
