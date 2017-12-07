#/home/usr/bin
#PATH+=:~/bin

#aliases
alias c='clear'
alias x='chmod +x'
alias py='python'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias l='ls -alh'
alias gdb='gdb -q'

#Powerline
if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
fi

# added by Anaconda3 installer
export PATH="/home/robot/anaconda3/bin:$PATH"

# aws command line completion
complete -c "/home/robot/.local/bin/aws_completer" aws

# kubectl command line completion
source <(kubectl completion bash)

# make py env function
function mkpyenv()
{
    mkdir pyenv &&
    python3.5 -m venv ./pyenv &&
    source pyenv/bin/activate &&
    python -m pip install -U docker-compose django awsebcli;
}

# exec docker command on alpine linux container
dexec ()
{
    docker exec -it "$1" sh -c "$2";
}
dshell ()
{
    docker exec -it "$1" /bin/sh;
}
