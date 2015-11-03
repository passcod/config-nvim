# ~/.config/nvim

    mkdir -p ~/.config
    cd ~/.config
    git clone git@github.com:passcod/dot-nvim.git nvim
    cd nvim/plugged
    git clone git://github.com/junegunn/vim-plug
    cd vim-plug
    ln -s . autoload
    nvim +PlugInstall +qall
