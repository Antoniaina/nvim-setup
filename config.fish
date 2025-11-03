if status is-interactive
    if test -f /home/linuxbrew/.linuxbrew/bin/brew
        eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    end
    oh-my-posh init fish --config $HOME/.poshthemes/ys.omp.json | source
end

set -x PATH $PATH /usr/local/bin /home/linuxbrew/.linuxbrew/bin
set -x NVM_DIR "$HOME/.nvm"
if test -f /home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh
    bass source /home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh
end
set PATH $PATH /home/rod/.local/bin

alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alF --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'
if not functions -q bass
    curl -sL https://git.io/fisher | source && fisher install edc/bass
end
zoxide init fish | source

