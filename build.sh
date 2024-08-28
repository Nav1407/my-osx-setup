#!/bin/bash

user=`whoami`
export PATH="$PATH:~/.local/bin"

brew_path=`/opt/homebrew/bin/brew --prefix`

eval "$(/${brew_path}/bin/brew shellenv)"

ansible-playbook -i "localhost," -c local -K -e "ansible_python_interpreter=${brew_path}/bin/python3.11" playbook.yml
