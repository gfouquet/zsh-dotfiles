# KUBERNETES
# SET NAMESPACE
kcsn() {
    k config set-context $(k config current-context) --namespace "$1";
}

alias randsuffix='openssl rand -hex 6'
alias kcurl='kubectl run curl-$(randsuffix) --image curlimages/curl --rm -it --restart Never ' 
alias kbbox='kubectl run bbox-$(randsuffix) --image yauritux/busybox-curl --restart Never '
alias kssh='kubectl run sshcli-$(randsuffix) --image occitech/ssh-client --restart Never '
alias kaws='kubectl run awscli-$(randsuffix) --image amazon/aws-cli --rm -it --restart Never '

kcheckport() {
    kubectl run bbox-$(randsuffix) --image busybox --restart Never --rm -it -- sh -c "cat /dev/null | nc -w 10 $1 $2 && echo 'Port $2 of $1 is open' || echo 'Port $2 of $1 is not reacheable'"
}

export PATH="${PATH}:${HOME}/.krew/bin"
