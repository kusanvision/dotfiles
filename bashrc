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

#PS1='[\u@\h \W]\$ '
#PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$'
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\$\[\033[00m\]'
export PATH=/usr/lib/jvm/java-7-openjdk/bin/:$PATH

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export GDK_USE_XFT=1
export GNUTERM=wxt
