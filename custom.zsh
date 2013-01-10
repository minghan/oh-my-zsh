# ============================
# Alias

alias lsc='ls --hide="*.o" --hide="*.dep"'

alias git-reset-all="git reset --hard ; git clean -df ; git pull ; "
alias git-addremove="git add . ; git add -u"

grep_() { grep $@ -r -i --color='always' * }
find_() { find ./ -name "*$@*" }

psgrep_() { ps ax | grep -i "$@" | grep -v grep }
pskill_() { ps ax | grep -i "$@" | grep -v grep | awk '{print $1}' | xargs kill -SIGKILL }

alias gcc_="gcc -ansi -pedantic -W -Wextra -Wall -g"
alias valgrind_="valgrind --tool=memcheck --leak-check=yes --show-reachable=yes"
alias diff_="diff -w -a -b -B"

alias rm="rm -i -v"

for c in cp chmod chown rename; do
    alias $c="$c -v"
done

export EDITOR="vim"

# ============================
# Useful keybindings

# Meta-u to chdir to the parent directory
# bindkey -s '\eu' '^Ucd ..; ls^M'

# ===========================
# Andrew Specific

HOSTNAME=`hostname`

if [[ $HOSTNAME =~ '.*andrew\.cmu\.edu' ]]; then

    alias aklog_="aklog cs.cmu.edu"

    # export PATH=/afs/cs.cmu.edu/academic/class/15410-s11/bin:$PATH

    bindkey "^[[3~" delete-char

    alias simics='make && simics4'

    export PYTHONSTARTUP=~/private/load_pyhist.py
    export PYTHONPATH=$PYTHONPATH:~/eggs
    export PATH=$PATH:~/eggs

elif [[ $HOSTNAME =~ '.*stanford\.edu' ]]; then

else
    export PYTHONSTARTUP=~/.oh-my-zsh/load_pyhist.py
fi

# ===========================

