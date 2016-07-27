PROJ_ROOT=~/dev

goto() {
  cd $PROJ_ROOT/$1/$2 2>/dev/null || clone $1 $2
}

clone() {
  cd $PROJ_ROOT
  mkdir -p $1
  cd $1
  git clone https://github.com/$1/$2.git
  cd $2
}

_goto () {
  local cur
  COMPREPLY=()
  cur=${COMP_WORDS[COMP_CWORD]}
  case "$COMP_CWORD" in
    1)
    COMPREPLY=( $( compgen -W "$(ls $PROJ_ROOT)" $cur ) )
    ;;
    2)
    COMPREPLY=( $( compgen -W "$(ls $PROJ_ROOT/${COMP_WORDS[1]})" $cur ) )
  esac

  return 0
}

complete -F _goto goto
