rm ~/.tmux.conf
ln -s `pwd`/tmux.conf ~/.tmux.conf

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo " To install plugins, start tmux and Hit prefix + I to fetch the plugin and source it. You should now be able to use the plugin."
