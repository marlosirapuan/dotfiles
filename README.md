# My dotfiles
Configuration dot files for macOS and Homebrew.

## Install Hack font
[https://sourcefoundry.org/hack/](https://sourcefoundry.org/hack/)

```
git clone https://github.com/marlosirapuan/dotfiles.git
cd dotfiles
cd homebrew
./brew_install.sh
./brew_recipes.sh

cd dotfiles
cp .aliases ~/.aliases

# install ohmyfuckingzsh
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
