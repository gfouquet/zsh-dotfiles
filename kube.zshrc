# KUBERNETES
# SET NAMESPACE
kcsn() {
    k config set-context $(k config current-context) --namespace "$1";
}

alias kcurl='kubectl run curl-$$ --image curlimages/curl --rm -it --restart Never ' 
alias kbbox='kubectl run bbox-$$ --image yauritux/busybox-curl --restart Never '
alias kssh='kubectl run sshcli-$$ --image occitech/ssh-client --restart Never '
alias kssh='kubectl run awscli-$$ --image amazon/aws-cli --rm -it --restart Never '
