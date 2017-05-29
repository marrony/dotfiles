ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/bash_profile ~/.bash_profile
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/slate ~/.slate 

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
