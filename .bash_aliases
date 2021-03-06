alias headmore='head -30'
alias tailmore='tail -n 30'
alias book='cut -c 1-80'
alias mdkir='mkdir'
alias eom='eog'

alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gs='git status'
alias gt='git log --oneline --decorate --graph --all'
alias gch='git checkout'

alias sga='sudo git add'
alias sgb='sudo git branch'
alias sgc='sudo git commit'
alias sgd='sudo git diff'
alias sgl='sudo git log'
alias sgs='sudo git status'
alias sgt='sudo git log --oneline --decorate --graph --all'
alias sgch='sudo git checkout'

alias x='xmodmap'

alias keys='echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode'
alias dlatex='latex -output-format=dvi'

#alias work='find -type d -name ".git" -exec ls -ld "{}" \\; | awk "{print \$6, \$7, \$8, $9}" | sort -rM'
alias gitls="find -type d -name '.git' -exec ls -ld '{}' \\;"
alias datesort="awk '{print \$6, \$7, \$8, \$9 }' | sort -rM"
