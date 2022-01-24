Personal zsh dotfiles
=====================

Prerequisite : 

```
brew update && \
brew install \
  ansible                        \
  ansible-lint                   \
  argocd                         \
  aws-iam-authenticator          \
  awscli                         \
  bash                           \
  bat                            \
  ca-certificates                \
  checkov                        \
  cloc                           \
  coreutils                      \
  curl                           \
  direnv                         \
  docker-credential-helper-ecr   \
  exa                            \
  expect                         \
  gnupg                          \
  go                             \
  goenv                          \
  gradle                         \
  groovysdk                      \
  helm                           \
  jenv                           \
  jq                             \
  kotlin                         \
  kubernetes-cli                 \
  masscan                        \
  maven                          \
  netcat                         \
  node                           \
  p7zip                          \
  plantuml                       \
  pre-commit                     \
  procs                          \
  pyenv                          \
  readline                       \
  ripgrep                        \
  rust                           \
  skaffold                       \
  sops                           \
  stress                         \
  terraform                      \
  terraform-docs                 \
  terragrunt                     \
  tflint                         \
  tfsec                          \
  tfswitch                       \
  tmux                           \
  tree                           \
  wget                           \
  yq                             \
  ytop
&& \
brew install --cask \
  1password               \
  balenaetcher            \
  confluent-hub-client    \
  dash                    \
  disk-inventory-x        \
  dropbox                 \
  firefox                 \
  gitup                   \
  google-chrome           \
  google-cloud-sdk        \
  insomnia                \
  intellij-idea           \
  iterm2                  \
  java                    \
  keka                    \
  lens                    \
  macvim                  \
  microsoft-teams         \
  sensiblesidebuttons     \
  session-manager-plugin  \
  slack                   \
  spotify                 \
  turbo-boost-switcher    \
  yed                     
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

