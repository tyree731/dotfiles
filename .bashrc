alias ls="ls -l --color=auto --human-readable --literal --show-control-chars"
export PS1='\[\e[1;34m\](\u@\h) \[\e[0;36m\][\w] \[\e[0;31m\]$(date "+%F %r")
\[\e[0m\]\$ '
export EDITOR="emacsclient -c"
export P4EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -n"
export HISTIGNORE="logout:[bf]g:exit:shutdown:init"
export HISTSIZE=5000
export LANG="en_AU.UTF-8"

alias emacs="emacsclient -c -n"
alias emacsd='emacs -rv --daemon'
alias emacskill="pkill -TERM -u $USER emacs"

alias db="xterm -j -geometry 120x60 -e gdbtui --tty `tty`";
shopt -s cdspell checkwinsize cmdhist execfail histverify mailwarn no_empty_cmd_completion

# web based man pages!
webman() { if [ $# -eq 2 ]; then w3m "http://man.cx/$2($1)"; else w3m "http://man.cx/$1"; fi; }
