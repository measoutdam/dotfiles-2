rm -f ~/.vimrc
tic -x ~/.dotfiles/xterm-256color-italic.terminfo
tic -x ~/.dotfiles/tmux-256color.terminfo

rm -f ~/.zshrc
ln -f -s ~/.dotfiles/zshrc ~/.zshrc

rm -f ~/.aliases
ln -s ~/.dotfiles/aliases ~/.aliases

source ~/.zshrc

ln -s ~/.dotfiles/vimrc ~/.vimrc

rm -rf ~/.config/nvim/
mkdir ~/.vim
ln -s ~/.vim ~/.config/nvim

rm -f ~/.config/nvim/init.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim

rm -f ~/.screenrc
ln -s ~/.dotfiles/screenrc ~/.screenrc

rm -f ~/.tmux.conf
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
rm -f ~/.tmux.conf.local
ln -s ~/.dotfiles/tmux.conf.local ~/.tmux.conf.local

rm -f ~/.agignore
ln -s ~/.dotfiles/agignore ~/.agignore

rm -f ~/.gitconfig
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

rm -f ~/.gitignore_global
ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global

rm -f ~/.pryrc
ln -s ~/.dotfiles/pryrc ~/.pryrc

rm -f ~/.irbrc
ln -s ~/.dotfiles/irbrc ~/.irbrc

rm -f ~/.vimrc.local
ln -s ~/.dotfiles/vimrc.local ~/.vimrc.local

rm -f ~/.vim/custom/plugin_customizations.vim
mkdir -p ~/.vim/custom
ln -s ~/.dotfiles/plugin_customizations.vim ~/.vim/custom/plugin_customizations.vim

rm -f ~/.vim/syntax/ruby.vim
mkdir -p ~/.vim/syntax
ln -s ~/.dotfiles/ruby.vim ~/.vim/syntax/ruby.vim

mkdir -p ~/.tmux-layouts/
rm -f ~/.tmux-layouts/bongloy.session.sh
ln -s ~/.dotfiles/tmux-layouts/bongloy.session.sh ~/.tmux-layouts/bongloy.session.sh

mkdir -p ~/.tmux-layouts/
rm -f ~/.tmux-layouts/aws-cloud-guru.session.sh
ln -s ~/.dotfiles/tmux-layouts/aws-cloud-guru.session.sh ~/.tmux-layouts/aws-cloud-guru.session.sh

mkdir -p ~/.tmux-layouts/
rm -f ~/.tmux-layouts/rails-books.session.sh
ln -s ~/.dotfiles/tmux-layouts/rails-books.session.sh ~/.tmux-layouts/rails-books.session.sh

rm -f ~/.ssh/config
ln -s ~/.dotfiles/ssh_config ~/.ssh/config
