#!/bin/sh -
if [ "`whoami`" != "root" ]; then
  echo "Require root privilege"
  exit 1
fi

echo 'sudo apt install -y zsh vim tmux'
sudo apt install -y zsh vim tmux
chsh -s $(which zsh)

CWD=${1:-$(cd $(dirname $0)/../../; pwd)}

symLinks() {
    # vim
    echo 'Create symlinks for vim'
    ln -sf $CWD/vim/vimrc ~/.vimrc
    ln -sf $CWD/vim/vim ~/.vim

    # tmux
    echo 'Create symlinks for tmux'
    ln -sf $CWD/tmux/tmux.conf ~/.tmux.conf
    # prefix + I

    # zsh
    echo 'Create symlinks for zsh'
    ln -sf $CWD/zsh/zshrc ~/.zshrc
    ln -sf $CWD/zsh/p10k.zsh ~/.p10k.zsh
}


symLinks
