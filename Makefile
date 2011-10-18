DOTFILES := $(shell pwd)
all: shell tmux screen perl _ruby X mail vimfiles _git
shell:
	ln -fs $(DOTFILES)/bash/bashrc ${HOME}/.bashrc
	ln -fs $(DOTFILES)/bash/bashenv ${HOME}/.bashenv
	ln -fs $(DOTFILES)/bash/bashrc ${HOME}/.bashrc
	ln -fs $(DOTFILES)/bash/bash_profile ${HOME}/.profile
	ln -fs $(DOTFILES)/bash/bash_profile ${HOME}/.bash_profile
	ln -fs $(DOTFILES)/bash/homebrew_profile ${HOME}/.homebrew.profile
	ln -fs $(DOTFILES)/zsh/zshrc ${HOME}/.zshrc
	ln -fs $(DOTFILES)/zsh/zlogout ${HOME}/.zlogout
	ln -fs $(DOTFILES)/zsh/zshenv ${HOME}/.zshenv
	ln -fs $(DOTFILES)/friends ${HOME}/.friends
	#ln -fs $(DOTFILES)/rc/gpg.conf ${HOME}/.gnupg/gpg.conf
	ln -fs $(DOTFILES)/ack/ackrc ${HOME}/.ackrc
	mkdir -p ${HOME}/etc/bash_completion.d/
	ln -fs $(DOTFILES)/bash/git-completion.bash ${HOME}/etc/bash_completion.d/git-completion.bash
screen:
	ln -fs $(DOTFILES)/rc/screenrc ${HOME}/.screenrc
tmux:
	ln -fs $(DOTFILES)/rc/tmux.conf ${HOME}/.tmux.conf
perl:
	ln -fs $(DOTFILES)/rc/perltidyrc ${HOME}/.perltidyrc
vimfiles:
	ln -fns $(DOTFILES)/vim ${HOME}/.vim
	ln -fs $(DOTFILES)/vim/vimrc ${HOME}/.vimrc
	ln -fs $(DOTFILES)/vim/gvimrc ${HOME}/.gvimrc
X:
	ln -fns $(DOTFILES)/rc/Xresources ${HOME}/.Xresources
	ln -fs $(DOTFILES)/rc/Xresources ${HOME}/.Xdefaults
mail:
	ln -fs $(DOTFILES)/mutt/muttrc ${HOME}/.muttrc
_ruby:
	ln -fs $(DOTFILES)/ruby/irbrc ${HOME}/.irbrc
	ln -fs $(DOTFILES)/ruby/rdebugrc ${HOME}/.rdebugrc
_git:
	ln -fs $(DOTFILES)/git/gitconfig ${HOME}/.gitconfig
	ln -fs $(DOTFILES)/git/gitignore ${HOME}/.gitignore
