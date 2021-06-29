# BASE64
enc() {
	echo -n "$1" | openssl base64
}	

dec() {
	 openssl base64 -d <<< "$1" | echo
}	
# HIDDEN FILES
showhidden() {
    defaults write com.apple.Finder AppleShowAllFiles true
    killall Finder
    killall Finder
}

hidehidden() {
    defaults write com.apple.Finder AppleShowAllFiles false
    killall Finder
    killall Finder
}

# HELM
# helm get chart version
# usage hgcv <release name> <additional helm args>
# example hgcv mychart -n myns --kubeconfig my.kubeconfig 
hgcv() {
  helm list $@ -o json | jq ".[] | select(.name == '$1') | .chart" | rev | cut -d "-" -f 1 | rev
}

# KUBERNETES
# kubectl logs by app name
klban () {
  declare -r tail=$([[ "$@" =~ "--tail" ]] && echo "" || echo "--tail=-1")
  kubectl logs $tail -l "app.kubernetes.io/name=$1" ${@:2}
}

