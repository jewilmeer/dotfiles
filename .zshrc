# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/.dotfiles

# your project folder that we can `c [tab]` to
export PROJECTS=~/Code

# all of our zsh files
typeset -U config_files
config_files=($ZSH/**/*.zsh)

# load the path files
for file in ${(M)config_files:#*/path.zsh}
do
  source $file
done

# load everything but the path and completion files
for file in ${${config_files:#*/path.zsh}:#*/completion.zsh}
do
  source $file
done

# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# load every completion after autocomplete loads
for file in ${(M)config_files:#*/completion.zsh}
do
  source $file
done

unset config_files





# #
# # Sets Oh My Zsh options.
# #
# # Authors:
# #   Sorin Ionescu <sorin.ionescu@gmail.com>
# #

# # Set the key mapping style to 'emacs' or 'vi'.
# # zstyle ':omz:module:editor' keymap 'emacs'

# # Auto convert .... to ../..
# zstyle ':omz:module:editor' dot-expansion 'no'

# # Set case-sensitivity for completion, history lookup, etc.
# zstyle ':omz:*:*' case-sensitive 'no'

# # Color output (auto set to 'no' on dumb terminals).
# zstyle ':omz:*:*' color 'yes'

# # Auto set the tab and window titles.
# zstyle ':omz:module:terminal' auto-title 'yes'

# # Set the Zsh modules to load (man zshmodules).
# zstyle ':omz:load' zmodule 'attr' 'stat'

# # Set the Zsh functions to load (man zshcontrib).
# # zstyle ':omz:load' zfunction 'zargs' 'zmv'

# # Set the Oh My Zsh modules to load (browse modules).
# # The order matters.
# zstyle ':omz:load' omodule \
#   'environment' \
#   'terminal' \
#   'editor' \
#   'history' \
#   'directory' \
#   'spectrum' \
#   'utility' \
#   'completion' \
#   'git' \
#   'prompt'

# # Set the prompt theme to load.
# # Setting it to 'random' loads a random theme.
# # Auto set to 'off' on dumb terminals.
# zstyle ':omz:module:prompt' theme 'steeef'

# # This will make you shout: OH MY ZSHELL!
# source "$OMZ/init.zsh"

# # Customize to your needs...
# export PATH=/usr/local/bin:$HOME/.rbenv/bin:$HOME/bin:$PATH

# #postgresql app path extension
# export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# eval "$(rbenv init -)"
# source ~/.aliases
# export EDITOR='subl'
# export VISUAL='vim'

# # Setup Ansible
# cd ~/code/tools/ansible
# source ./hacking/env-setup
# cd ~
# export ANSIBLE_HOSTS=~/ansible_hosts
# # End Ansible Setup

# # make sure locale settings are correct for ssh sessions
# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
