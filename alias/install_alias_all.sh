#this source load all alias to the ~/.bashrc file
cp ~/.bashrc ~/.bashrc.bkp
cat alias_* >> ~/.bashrc

source ~/.bashrc
bashrc_sourced=$(stat -c %Y ~/.bashrc)

PROMPT_COMMAND='
    test $(stat -c %Y ~/.bashrc) -ne $bashrc_sourced && source ~/.bashrc
'
