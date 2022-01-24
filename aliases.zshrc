# Fixes ansible bug https://github.com/ansible/ansible/issues/32499
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# TOOLS ALIASES
alias k="kubectl"

alias g="git"

alias t="terraform"
alias tp="terraform plan"
alias ta="terraform apply"
alias ti="terraform init"
alias tir="terraform init -reconfgure"
alias tg="terragrunt"

alias h="helm"
alias hl="helm list"
alias hgv="helm get values"
alias hm="helm template"
alias hi="helm install"
alias hu="helm update"
alias hui="helm update --install"
alias hr="helm repo"
alias hru="helm repo update"
alias hra="helm repo add"
alias hrl="helm repo list"

# ALIASES CLI RUST
alias ls="exa"
alias ll="exa -al"
alias grep="rg"
alias cat="bat --plain --paging=never"


# ALIASES PERSO
alias p="cd ~/projects"
alias mfi="mvn install -DskipTests"


alias flushdns="sudo killall -HUP mDNSResponder"


alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"


