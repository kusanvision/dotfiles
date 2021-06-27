#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -h -F --color=auto'
alias ll='ls -lh --file-type --color=auto --group-directories-first'
alias la='ls -ah -F --color=auto'
alias cc='gcc -O2'
alias mp3='mpg123 -C'
alias vi='vim'
alias clr='clear'
alias wee='weechat-curses'
alias sprunge='curl -F "sprunge=<-" http://sprunge.us'
alias myip='curl -s http://checkrealip.com/ | grep "Current IP Address"'
alias music='mocp -T green_theme'
alias musik='mocp -T nightly_theme'
alias musiq='mocp'
alias mocp='mocp -T darkdot_theme'
alias gaan='mocp -T nightly_theme'
alias gan='mocp -T green_theme'
alias mean='dict'
alias meaning='dict'
alias skype='xhost +local: && su skype -c skype'
alias torrentdl='aria2c --max-upload-limit=15K --summary-interval=600'
alias radiobolly='cvlc http://yp.shoutcast.com/sbin/tunein-station.pls?id=676871'

#opencv C++ compile command
alias ocvcpp='g++ `pkg-config opencv --cflags --libs`'
#opencv C compile command
alias ocvc='gcc `pkg-config opencv --cflags --libs`'

###### Xubuntu 20.04 ######
alias clr='clear'
alias moc='mocp -T /usr/share/moc/themes/yellow_red_theme'
alias tt='du -hsx * | sort -rh | head -20'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias back='cd -'
alias lastmod="find . -type f -exec stat --format '%Y :%y %n' \"{}\" \; | sort -nr | cut -d: -f2-"
alias running_services='systemctl list-units  --type=service  --state=running'

# For fun
alias llcat='ls -l | lolcat -a'


## transfer.sh ##
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }


## sprunge.us ##
#sprung() { curl -F "sprunge=<-" http://sprunge.us <"$1" ;}
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

#FZF config
# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='**'
bind '"\C-g":"cd_with_fzf\n"'

cd_with_fzf()
{
    cd $HOME && cd "$(fdfind -t d | fzf --preview="tree -L 1 {}" --bind="space:toggle-preview")" &&
        echo "$PWD" && tree -L 1
}

source /usr/share/doc/fzf/examples/key-bindings.bash

###### End ######

#PS1='[\u@\h \W]\$ '
#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$'
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\$\[\033[00m\]'
export PATH=/usr/lib/jvm/java-7-openjdk/bin/:$PATH

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GDK_USE_XFT=1
export GNUTERM=wxt

#testing
