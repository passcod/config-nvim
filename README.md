# ~/.config/nvim

    cd ~/.config
    git clone git@github.com:passcod/config-nvim.git nvim
    cd nvim/plugged
    git clone https://github.com/junegunn/vim-plug.git
    cd vim-plug
    ln -s . autoload
    cd ../..
    nvim +PlugInstall init.vim
