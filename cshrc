alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -Fa
alias ll	ls -la
alias lh	ll -h
alias ls	ls -FGI
alias .		ls
alias ..	cd ../
alias s		screen
alias man       env LC_ALL=C man
alias r		screen -r
alias vi	vim
alias top	top -s 1
alias csupup	csup -L 2 /root/supfiles/ports-supfile
alias du	du -h
alias pm	portmaster -Bd --no-confirm
alias mysql	mysql -u root -p --prompt="\(\\u\@\\h\)\ \[\\d\]\>"
alias grep	grep --color=always
alias less	less -R

set	autolist

setenv	LSCOLORS "ExFxcxdxbxegedabagacad"

setenv	TERMCAP 'xterm|xterm-color:Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm:tc=xterm-xfree86:'

setenv	LANG en_US.UTF-8
setenv	LC_CTYPE en_US.UTF-8
setenv	LC_COLLATE en_US.UTF-8
setenv	LC_TIME en_US.UTF-8
setenv	LC_NUMERIC en_US.UTF-8
setenv	LC_MONETARY en_US.UTF-8
setenv	LC_MESSAGES en_US.UTF-8
setenv	LC_ALL en_US.UTF-8

umask	22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin)

setenv	EDITOR	vim
setenv	PAGER	less
setenv	BLOCKSIZE       K

if ($?prompt) then
	if ( $USER == 'root') then
		set prompt = "%B[%{\033[31m%}%n%{\033[37m%}@%m %~]%# "
	else
		set prompt = "%B[%{\033[36m%}%n%{\033[37m%}@%m %~]%# "
	endif
	set filec
	set history = 5000
	set savehist = 5000
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

source ~/Dotfiles/git-completion.tcsh
