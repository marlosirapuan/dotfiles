# My dotfiles
Simple configuration dot files for macOS and Homebrew.

```
git clone https://github.com/marlosirapuan/dotfiles.git

cd dotfiles
cd homebrew
./brew_install.sh
./brew_recipes.sh
./brew_casks.sh

cd dotfiles
cp .aliases ~/.aliases

touch ~/.bash_profile

# Install Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh-autosuggestions:
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

vim ~/.zshrc

# add lines below
source ~/.aliases
source ~/.bash_profile

# save n close :wq
# reload terminal

cd dotfiles
./.macos
```

ggwp.
