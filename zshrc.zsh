# In ~/.zshrc
# source ~/.oh-my-zsh/zshrc.zsh

autoload -U is-at-least

if is-at-least 4.3.0; then
    source ~/.oh-my-zsh/oh_my_zsh.zsh
else
    source ~/.oh-my-zsh/andrew_old.zsh
fi

source ~/.oh-my-zsh/custom.zsh

