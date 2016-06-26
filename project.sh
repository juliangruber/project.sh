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
