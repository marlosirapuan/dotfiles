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

# Install Zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

vim ~/.zshrc

# add line below
source ~/.aliases

# save n close :wq
# reload terminal

cd dotfiles
./.macos
```

ggwp.
