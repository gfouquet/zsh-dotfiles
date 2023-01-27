Personal zsh dotfiles
=====================

Prerequisite : 

```
brew update && \
brew install \
  ansible                        \
  ansible-lint                   \
  argocd                         \
  asdf                           \
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
  fd                             \
  gnupg                          \
  go                             \
  goenv                          \
  gradle                         \
  groovysdk                      \
  helm                           \
  jenv                           \
  jq                             \
  kotlin                         \
  krew                           \
  kubernetes-cli                 \
  masscan                        \
  maven                          \
  netcat                         \
  node                           \
  openjdk                        \
  p7zip                          \
  plantuml                       \
  pre-commit                     \
  procs                          \
  pyenv                          \
  rclone                         \
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
  ytop \
  warrensbox/tap/tfswitch \
&& \
brew install --cask \
  1password               \
  balenaetcher            \
  coconutbattery          \
  confluent-cli           \
  confluent-hub-client    \
  cyberduck               \
  disk-inventory-x        \
  dropbox                 \
  firefox                 \
  gitup                   \
  google-chrome           \
  google-backup-and-sync  \
  google-cloud-sdk        \
  insomnia                \
  intellij-idea           \
  iterm2                  \
  java                    \
  keka                    \
  macvim                  \
  microsoft-teams         \
  sensiblesidebuttons     \
  session-manager-plugin  \
  slack                   \
  spotify                 \
  todoist                 \
  vagrant                 \
  virtualbox              \
  wireshark               \
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

