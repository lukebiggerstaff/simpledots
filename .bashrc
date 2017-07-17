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

#Powerline
if [ -f `which powerline-daemon` ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bindings/bash/powerline.sh
fi

#LinuxAcademy
alias lab1='ssh user@lbiggerstaff1.mylabserver.com'
alias lab2='ssh user@lbiggerstaff2.mylabserver.com'
alias lab3='ssh user@lbiggerstaff3.mylabserver.com'
alias lab4='ssh user@lbiggerstaff4.mylabserver.com'
alias lab5='ssh user@lbiggerstaff5.mylabserver.com'
alias lab6='ssh user@lbiggerstaff6.mylabserver.com'

#home lab centos7.2
alias central='ssh -l user central.labs.com'
alias server='ssh -l user server.labs.com'
alias client='ssh -l user client.labs.com'
alias outsider='ssh -l user outsider.labs.com'

#home lab centos7.0
alias central7='ssh -l user central7.labs.com'
alias server7='ssh -l user server7.labs.com'
alias client7='ssh -l user client7.labs.com'

#AWS Free Instance
alias AWS='ssh -i "~/.ssh/AWSInstance.pem" ec2-user@ec2-54-202-99-194.us-west-2.compute.amazonaws.com'

#DO Droplet
alias DO='ssh luke@162.243.205.196'

#set up virtualenvwrapper for python
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

