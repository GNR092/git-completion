if ! (( $+commands[git] )); then
  print "zsh git-completion plugin: git not found. Please install git before using this plugin." >&2
  return 1
fi

if [[ ${aliases[g]-} != git ]] || (( ! $+functions[compdef] )); then
  return
fi

compdef _git g=git
