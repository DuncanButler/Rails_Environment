name "rails-dev"
description "setup for ruby on rails core development"

run_list(
  "recipe[apt]",
  "recipe[git]",
  "recipe[sqlite]",
  "recipe[mysql::client]",
  "recipe[mysql::ruby]",
  "recipe[mysql::server]",
  "recipe[postgresql::ruby]",
  "recipe[postgresql::server]",
  "recipe[nodejs::install_from_binary]",
  "recipe[database]",
  "recipe[libevent]",
  "recipe[tmux::source]",
  "recipe[vim]",
  "recipe[zsh]",
  "recipe[curl]"
)

