export ARCHFLAGS="-arch x86_64"
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export CLICOLOR=1
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

export VCPROMPT_FORMAT=" [%b%m%u]"
export PS1="\u@\h:\[\033[1;34m\]\w\[\033[0m\]\$(vcprompt)\$ "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# virtualenv wrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/git
pyenv virtualenvwrapper_lazy

# Load .bashrc if it exists
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

