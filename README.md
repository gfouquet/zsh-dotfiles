Personal zsh dotfiles
=====================

Prerequisite : 

```
brew update && \
brew install \
  jq \
  yq \
  kubernetes-cli \
  helm \ 
  curl \
  tmux \
  terraform \
  tfswitch \
  ansible \
  awscli \
  exa \
  bat \
  ripgrep \
  sops \
  node \
  ytop \ 
  openjdk \
  procs \
  p7zip \
  kscript \
  maven \
  gradle \
  kotlin \
  jenv \
  aws-iam-authenticator \
  groovysdk \
  bash \
  plant-uml \
&& \
brew install --cask \
  macvim \
  dash \
  firefox \
  gitup \
  sensiblesidebuttons \
  session-manager-plugin \
  yed \ 
  lens \ 
  google-cloud-sdk \
  disk-inventory-x \
  intellij-idea
```

Oh my zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Source dotfiles

```
echo >>~/.zshrc <<EOF
for file in ~/.dotfiles/*(.); do
  if [[ ! ${file} =~ \.md ]]; then
      source ${file}
  fi
done
EOF

```

