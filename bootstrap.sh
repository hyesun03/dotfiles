#!/bin/sh


if test ! $(command -v brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

packages=(
    zsh
    git
    tree
    neovim
    httpie
    tree
    maven
    gradle
    pyenv
    pyenv-virtualenv
)


# brew install "${packages[@]}"

for package in "${packages[@]}"; do
    package_name=$( echo "$package" | awk '{print $1}' )
    if brew list "$package_name" > /dev/null 2>&1; then
        echo "$package_name already installed... skipping."
    else
        brew install "$package"
    fi
done

