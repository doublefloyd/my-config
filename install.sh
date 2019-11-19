rm -Rf ~/.anaconda3 ~/.my-config ~/.zshrc ~/.vimrc ~/.zsh-syntax-highlighting ~/.oh-my-zsh ~/.tmux.conf

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/anaconda-installer.sh

bash ~/anaconda-installer.sh -p ~/.anaconda3 -b

rm ~/anaconda-installer.sh

curl -L git.io/antigen > .antigen.zsh

git clone https://github.com/sbairedd/my-config.git ~/.my-config

ln -s ~/.my-config/.zshrc ~/.zshrc

ln -s ~/.my-config/.vimrc ~/.vimrc

n -s ~/.my-config/tmux/tmux.conf ~/.tmux.conf

source ~/.zshrc

pip install --upgrade autopep8

rm -rf ~/.vim/bundle/Vundle.vim

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall