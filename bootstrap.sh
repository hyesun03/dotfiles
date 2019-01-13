#!/bin/sh


############################
##### INSTALL homebrew #####
############################
echo "===== INSTALL homebrew if not installed ====="
if test ! $(command -v brew); then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "<homebrew> already INSTALLED... skipping..."
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

echo "===== INSTALL packages with homebrew ====="
# brew install "${packages[@]}"
for package in "${packages[@]}"; do
    package_name=$( echo "$package" | awk '{print $1}' )
    if brew list "$package_name" > /dev/null 2>&1; then
        echo "<$package_name> already INSTALLED... skipping..."
    else
        brew install "$package"
    fi
done


######################################
##### INSTALL Command Line Tools #####
######################################
echo "===== INSTALL Command Line Tools if not installed ====="
if ! command -v xcodebuild > /dev/null; then
    xcode-select --install
else
    echo "<Command Line Tools> already INSTALLED... skipping..."
fi


#############################
##### INSTALL oh-my-zsh #####
#############################
echo "===== INSTALL oh-my-zsh if not installed ====="
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "<oh-my-zsh> already INSTALLED... skipping..."
fi

