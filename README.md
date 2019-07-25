# My dotfiles
Simple configuration dot files for macOS and Homebrew.

```
git clone https://github.com/marlosirapuan/dotfiles.git

cd dotfiles
cd homebrew
./brew_install.sh
./brew_recipes.sh

chmod +x brew_casks.sh
./brew_casks.sh

cd ..
cp .aliases ~/.aliases
cp .bash_profile ~/.bash_profile
```

### zsh
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install zplugin (best way to install zsh plugins):
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
```

After install, edit `"~/.zshrc"` and add:
```
source ~/.aliases
source ~/.bash_profile
```

And this lines:
```
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
```

Save and close `":wq"` and reload terminal.

## Extras

### Spaceships
```
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
```

Edit again `"~/.zshrc"` and change
```
ZSH_THEME="spaceship"
```

Save and close `":wq"` and reload terminal

```
cd dotfiles
./.macos
```

Restart macOS.

ggwp.
