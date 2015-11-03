# ~/.config/nvim

    mkdir -p ~/.config
    cd ~/.config
    git clone git@github.com:passcod/dot-nvim.git nvim
    cd nvim/plugged
    git clone https://github.com/junegunn/vim-plug.git
    cd vim-plug
    ln -s . autoload
    cd ../..
    nvim +PlugInstall init.vim
