#!/bin/sh -

symLinks() {
    # vim
    echo 'Create symlinks for vim'
    ln -svf $PWD/vim/vimrc ~/.vimrc
    ln -svfn $PWD/vim/vim ~/.vim

    # tmux
    echo 'Create symlinks for tmux'
    ln -svf $PWD/tmux/tmux.conf ~/.tmux.conf
    # prefix + I

    # zsh
    echo 'Create symlinks for zsh'
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ln -svf $PWD/zsh/zshrc ~/.zshrc
    ln -svf $PWD/zsh/p10k.zsh ~/.p10k.zsh
}

symLinks
