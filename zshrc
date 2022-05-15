alias gdiff='git diff --cached'
alias glog='git log --graph --oneline --decorate'
alias gir='f(){grep -ir $@ .; unset -f f; }; f'
function cdl(){
  if [[ $1 == "-" ]]
  then 
    cd - 
  else
    cd "$1" $$ ls
  fi
}
alias ls='ls -G'

powerlevel 10k
jq
aspell
awscli
