# enable aws-cli autocompletion
autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
compinit
complete -C '/usr/local/bin/aws_completer' aws

# necessaire pour vieux terraforms
export AWS_SDK_LOAD_CONFIG=1

# pas de pagination. marche pas dans le fichier de config
export AWS_PAGER=""
